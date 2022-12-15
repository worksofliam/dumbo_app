**free

ctl-opt dftactgrp(*no);

dcl-pi P3641;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1283.rpgleinc'
/copy 'qrpgleref/P2382.rpgleinc'
/copy 'qrpgleref/P2780.rpgleinc'

dcl-ds theTable extname('T310') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T310 LIMIT 1;

theCharVar = 'Hello from P3641';
dsply theCharVar;
callp localProc();
P1283();
P2382();
P2780();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3641 in the procedure';
end-proc;