**free

ctl-opt dftactgrp(*no);

dcl-pi P1447;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P154.rpgleinc'
/copy 'qrpgleref/P979.rpgleinc'
/copy 'qrpgleref/P1026.rpgleinc'

dcl-ds theTable extname('T379') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T379 LIMIT 1;

theCharVar = 'Hello from P1447';
dsply theCharVar;
callp localProc();
P154();
P979();
P1026();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1447 in the procedure';
end-proc;