**free

ctl-opt dftactgrp(*no);

dcl-pi P1625;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1284.rpgleinc'
/copy 'qrpgleref/P1099.rpgleinc'
/copy 'qrpgleref/P1125.rpgleinc'

dcl-ds theTable extname('T1664') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1664 LIMIT 1;

theCharVar = 'Hello from P1625';
dsply theCharVar;
callp localProc();
P1284();
P1099();
P1125();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1625 in the procedure';
end-proc;