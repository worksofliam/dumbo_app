**free

ctl-opt dftactgrp(*no);

dcl-pi P210;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P204.rpgleinc'
/copy 'qrpgleref/P172.rpgleinc'
/copy 'qrpgleref/P125.rpgleinc'

dcl-ds theTable extname('T486') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T486 LIMIT 1;

theCharVar = 'Hello from P210';
dsply theCharVar;
callp localProc();
P204();
P172();
P125();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P210 in the procedure';
end-proc;