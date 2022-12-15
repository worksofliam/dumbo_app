**free

ctl-opt dftactgrp(*no);

dcl-pi P2571;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2093.rpgleinc'
/copy 'qrpgleref/P1502.rpgleinc'
/copy 'qrpgleref/P1453.rpgleinc'

dcl-ds theTable extname('T1502') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1502 LIMIT 1;

theCharVar = 'Hello from P2571';
dsply theCharVar;
callp localProc();
P2093();
P1502();
P1453();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2571 in the procedure';
end-proc;