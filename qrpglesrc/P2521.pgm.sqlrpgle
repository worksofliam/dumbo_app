**free

ctl-opt dftactgrp(*no);

dcl-pi P2521;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2446.rpgleinc'
/copy 'qrpgleref/P750.rpgleinc'
/copy 'qrpgleref/P1285.rpgleinc'

dcl-ds theTable extname('T1147') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1147 LIMIT 1;

theCharVar = 'Hello from P2521';
dsply theCharVar;
callp localProc();
P2446();
P750();
P1285();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2521 in the procedure';
end-proc;