**free

ctl-opt dftactgrp(*no);

dcl-pi P2433;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2274.rpgleinc'
/copy 'qrpgleref/P624.rpgleinc'
/copy 'qrpgleref/P239.rpgleinc'

dcl-ds theTable extname('T1276') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1276 LIMIT 1;

theCharVar = 'Hello from P2433';
dsply theCharVar;
callp localProc();
P2274();
P624();
P239();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2433 in the procedure';
end-proc;