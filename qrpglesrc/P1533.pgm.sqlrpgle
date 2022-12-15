**free

ctl-opt dftactgrp(*no);

dcl-pi P1533;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P56.rpgleinc'
/copy 'qrpgleref/P88.rpgleinc'
/copy 'qrpgleref/P500.rpgleinc'

dcl-ds theTable extname('T1415') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1415 LIMIT 1;

theCharVar = 'Hello from P1533';
dsply theCharVar;
callp localProc();
P56();
P88();
P500();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1533 in the procedure';
end-proc;