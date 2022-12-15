**free

ctl-opt dftactgrp(*no);

dcl-pi P1644;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P275.rpgleinc'
/copy 'qrpgleref/P1373.rpgleinc'
/copy 'qrpgleref/P724.rpgleinc'

dcl-ds theTable extname('T261') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T261 LIMIT 1;

theCharVar = 'Hello from P1644';
dsply theCharVar;
callp localProc();
P275();
P1373();
P724();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1644 in the procedure';
end-proc;