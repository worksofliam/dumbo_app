**free

ctl-opt dftactgrp(*no);

dcl-pi P4951;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1502.rpgleinc'
/copy 'qrpgleref/P759.rpgleinc'
/copy 'qrpgleref/P3674.rpgleinc'

dcl-ds theTable extname('T914') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T914 LIMIT 1;

theCharVar = 'Hello from P4951';
dsply theCharVar;
callp localProc();
P1502();
P759();
P3674();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4951 in the procedure';
end-proc;