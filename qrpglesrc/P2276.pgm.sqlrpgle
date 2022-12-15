**free

ctl-opt dftactgrp(*no);

dcl-pi P2276;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1598.rpgleinc'
/copy 'qrpgleref/P1391.rpgleinc'
/copy 'qrpgleref/P1360.rpgleinc'

dcl-ds theTable extname('T303') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T303 LIMIT 1;

theCharVar = 'Hello from P2276';
dsply theCharVar;
callp localProc();
P1598();
P1391();
P1360();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2276 in the procedure';
end-proc;