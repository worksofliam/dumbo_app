**free

ctl-opt dftactgrp(*no);

dcl-pi P2583;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P416.rpgleinc'
/copy 'qrpgleref/P332.rpgleinc'
/copy 'qrpgleref/P604.rpgleinc'

dcl-ds theTable extname('T554') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T554 LIMIT 1;

theCharVar = 'Hello from P2583';
dsply theCharVar;
callp localProc();
P416();
P332();
P604();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2583 in the procedure';
end-proc;