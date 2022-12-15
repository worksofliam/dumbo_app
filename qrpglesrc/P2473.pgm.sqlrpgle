**free

ctl-opt dftactgrp(*no);

dcl-pi P2473;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1438.rpgleinc'
/copy 'qrpgleref/P1707.rpgleinc'
/copy 'qrpgleref/P1706.rpgleinc'

dcl-ds theTable extname('T1870') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1870 LIMIT 1;

theCharVar = 'Hello from P2473';
dsply theCharVar;
callp localProc();
P1438();
P1707();
P1706();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2473 in the procedure';
end-proc;