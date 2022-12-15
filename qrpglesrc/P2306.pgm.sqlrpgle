**free

ctl-opt dftactgrp(*no);

dcl-pi P2306;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P243.rpgleinc'
/copy 'qrpgleref/P99.rpgleinc'
/copy 'qrpgleref/P1637.rpgleinc'

dcl-ds theTable extname('T1871') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1871 LIMIT 1;

theCharVar = 'Hello from P2306';
dsply theCharVar;
callp localProc();
P243();
P99();
P1637();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2306 in the procedure';
end-proc;