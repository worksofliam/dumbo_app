**free

ctl-opt dftactgrp(*no);

dcl-pi P4351;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1753.rpgleinc'
/copy 'qrpgleref/P2925.rpgleinc'
/copy 'qrpgleref/P1192.rpgleinc'

dcl-ds theTable extname('T959') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T959 LIMIT 1;

theCharVar = 'Hello from P4351';
dsply theCharVar;
callp localProc();
P1753();
P2925();
P1192();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4351 in the procedure';
end-proc;