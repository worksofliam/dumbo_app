**free

ctl-opt dftactgrp(*no);

dcl-pi P5101;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P18.rpgleinc'
/copy 'qrpgleref/P252.rpgleinc'
/copy 'qrpgleref/P3160.rpgleinc'

dcl-ds theTable extname('T1400') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1400 LIMIT 1;

theCharVar = 'Hello from P5101';
dsply theCharVar;
callp localProc();
P18();
P252();
P3160();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5101 in the procedure';
end-proc;