**free

ctl-opt dftactgrp(*no);

dcl-pi P2927;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2083.rpgleinc'
/copy 'qrpgleref/P1598.rpgleinc'
/copy 'qrpgleref/P1089.rpgleinc'

dcl-ds theTable extname('T1743') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1743 LIMIT 1;

theCharVar = 'Hello from P2927';
dsply theCharVar;
callp localProc();
P2083();
P1598();
P1089();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2927 in the procedure';
end-proc;