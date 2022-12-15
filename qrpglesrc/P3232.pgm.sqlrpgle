**free

ctl-opt dftactgrp(*no);

dcl-pi P3232;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2610.rpgleinc'
/copy 'qrpgleref/P61.rpgleinc'
/copy 'qrpgleref/P2243.rpgleinc'

dcl-ds theTable extname('T768') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T768 LIMIT 1;

theCharVar = 'Hello from P3232';
dsply theCharVar;
callp localProc();
P2610();
P61();
P2243();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3232 in the procedure';
end-proc;