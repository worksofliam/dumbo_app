**free

ctl-opt dftactgrp(*no);

dcl-pi P834;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P494.rpgleinc'
/copy 'qrpgleref/P204.rpgleinc'
/copy 'qrpgleref/P636.rpgleinc'

dcl-ds theTable extname('T1410') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1410 LIMIT 1;

theCharVar = 'Hello from P834';
dsply theCharVar;
callp localProc();
P494();
P204();
P636();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P834 in the procedure';
end-proc;