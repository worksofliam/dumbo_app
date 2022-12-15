**free

ctl-opt dftactgrp(*no);

dcl-pi P1024;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P204.rpgleinc'
/copy 'qrpgleref/P850.rpgleinc'
/copy 'qrpgleref/P799.rpgleinc'

dcl-ds theTable extname('T549') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T549 LIMIT 1;

theCharVar = 'Hello from P1024';
dsply theCharVar;
callp localProc();
P204();
P850();
P799();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1024 in the procedure';
end-proc;