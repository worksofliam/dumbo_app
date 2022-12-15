**free

ctl-opt dftactgrp(*no);

dcl-pi P204;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P177.rpgleinc'
/copy 'qrpgleref/P133.rpgleinc'
/copy 'qrpgleref/P7.rpgleinc'

dcl-ds theTable extname('T169') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T169 LIMIT 1;

theCharVar = 'Hello from P204';
dsply theCharVar;
callp localProc();
P177();
P133();
P7();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P204 in the procedure';
end-proc;