**free

ctl-opt dftactgrp(*no);

dcl-pi P603;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P435.rpgleinc'
/copy 'qrpgleref/P99.rpgleinc'
/copy 'qrpgleref/P191.rpgleinc'

dcl-ds theTable extname('T1369') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1369 LIMIT 1;

theCharVar = 'Hello from P603';
dsply theCharVar;
callp localProc();
P435();
P99();
P191();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P603 in the procedure';
end-proc;