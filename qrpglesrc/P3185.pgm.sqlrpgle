**free

ctl-opt dftactgrp(*no);

dcl-pi P3185;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1570.rpgleinc'
/copy 'qrpgleref/P1598.rpgleinc'
/copy 'qrpgleref/P2350.rpgleinc'

dcl-ds theTable extname('T1738') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1738 LIMIT 1;

theCharVar = 'Hello from P3185';
dsply theCharVar;
callp localProc();
P1570();
P1598();
P2350();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3185 in the procedure';
end-proc;