**free

ctl-opt dftactgrp(*no);

dcl-pi P2371;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1808.rpgleinc'
/copy 'qrpgleref/P710.rpgleinc'
/copy 'qrpgleref/P1277.rpgleinc'

dcl-ds theTable extname('T1260') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1260 LIMIT 1;

theCharVar = 'Hello from P2371';
dsply theCharVar;
callp localProc();
P1808();
P710();
P1277();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2371 in the procedure';
end-proc;