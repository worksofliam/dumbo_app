**free

ctl-opt dftactgrp(*no);

dcl-pi P1152;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P797.rpgleinc'
/copy 'qrpgleref/P727.rpgleinc'
/copy 'qrpgleref/P1042.rpgleinc'

dcl-ds theTable extname('T485') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T485 LIMIT 1;

theCharVar = 'Hello from P1152';
dsply theCharVar;
callp localProc();
P797();
P727();
P1042();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1152 in the procedure';
end-proc;