**free

ctl-opt dftactgrp(*no);

dcl-pi P1309;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P56.rpgleinc'
/copy 'qrpgleref/P880.rpgleinc'
/copy 'qrpgleref/P958.rpgleinc'

dcl-ds theTable extname('T391') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T391 LIMIT 1;

theCharVar = 'Hello from P1309';
dsply theCharVar;
callp localProc();
P56();
P880();
P958();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1309 in the procedure';
end-proc;