**free

ctl-opt dftactgrp(*no);

dcl-pi P3530;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2122.rpgleinc'
/copy 'qrpgleref/P232.rpgleinc'
/copy 'qrpgleref/P1866.rpgleinc'

dcl-ds theTable extname('T1068') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1068 LIMIT 1;

theCharVar = 'Hello from P3530';
dsply theCharVar;
callp localProc();
P2122();
P232();
P1866();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3530 in the procedure';
end-proc;