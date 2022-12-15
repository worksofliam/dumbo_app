**free

ctl-opt dftactgrp(*no);

dcl-pi P1426;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P682.rpgleinc'
/copy 'qrpgleref/P532.rpgleinc'
/copy 'qrpgleref/P1144.rpgleinc'

dcl-ds theTable extname('T1491') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1491 LIMIT 1;

theCharVar = 'Hello from P1426';
dsply theCharVar;
callp localProc();
P682();
P532();
P1144();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1426 in the procedure';
end-proc;