**free

ctl-opt dftactgrp(*no);

dcl-pi P2560;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P471.rpgleinc'
/copy 'qrpgleref/P1393.rpgleinc'
/copy 'qrpgleref/P1715.rpgleinc'

dcl-ds theTable extname('T213') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T213 LIMIT 1;

theCharVar = 'Hello from P2560';
dsply theCharVar;
callp localProc();
P471();
P1393();
P1715();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2560 in the procedure';
end-proc;