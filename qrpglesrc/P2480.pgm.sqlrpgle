**free

ctl-opt dftactgrp(*no);

dcl-pi P2480;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P266.rpgleinc'
/copy 'qrpgleref/P2333.rpgleinc'
/copy 'qrpgleref/P1598.rpgleinc'

dcl-ds theTable extname('T1115') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1115 LIMIT 1;

theCharVar = 'Hello from P2480';
dsply theCharVar;
callp localProc();
P266();
P2333();
P1598();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2480 in the procedure';
end-proc;