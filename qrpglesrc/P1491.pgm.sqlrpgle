**free

ctl-opt dftactgrp(*no);

dcl-pi P1491;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1465.rpgleinc'
/copy 'qrpgleref/P598.rpgleinc'
/copy 'qrpgleref/P1393.rpgleinc'

dcl-ds theTable extname('T341') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T341 LIMIT 1;

theCharVar = 'Hello from P1491';
dsply theCharVar;
callp localProc();
P1465();
P598();
P1393();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1491 in the procedure';
end-proc;