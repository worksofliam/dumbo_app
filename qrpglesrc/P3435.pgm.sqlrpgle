**free

ctl-opt dftactgrp(*no);

dcl-pi P3435;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1741.rpgleinc'
/copy 'qrpgleref/P3429.rpgleinc'
/copy 'qrpgleref/P2630.rpgleinc'

dcl-ds theTable extname('T1768') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1768 LIMIT 1;

theCharVar = 'Hello from P3435';
dsply theCharVar;
callp localProc();
P1741();
P3429();
P2630();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3435 in the procedure';
end-proc;