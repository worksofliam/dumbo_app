**free

ctl-opt dftactgrp(*no);

dcl-pi P2453;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1266.rpgleinc'
/copy 'qrpgleref/P1824.rpgleinc'
/copy 'qrpgleref/P2270.rpgleinc'

dcl-ds theTable extname('T745') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T745 LIMIT 1;

theCharVar = 'Hello from P2453';
dsply theCharVar;
callp localProc();
P1266();
P1824();
P2270();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2453 in the procedure';
end-proc;