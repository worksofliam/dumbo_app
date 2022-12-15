**free

ctl-opt dftactgrp(*no);

dcl-pi P969;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P618.rpgleinc'
/copy 'qrpgleref/P684.rpgleinc'
/copy 'qrpgleref/P502.rpgleinc'

dcl-ds theTable extname('T1449') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1449 LIMIT 1;

theCharVar = 'Hello from P969';
dsply theCharVar;
callp localProc();
P618();
P684();
P502();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P969 in the procedure';
end-proc;