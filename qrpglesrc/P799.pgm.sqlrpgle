**free

ctl-opt dftactgrp(*no);

dcl-pi P799;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P305.rpgleinc'
/copy 'qrpgleref/P349.rpgleinc'
/copy 'qrpgleref/P474.rpgleinc'

dcl-ds theTable extname('T394') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T394 LIMIT 1;

theCharVar = 'Hello from P799';
dsply theCharVar;
callp localProc();
P305();
P349();
P474();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P799 in the procedure';
end-proc;