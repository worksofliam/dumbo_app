**free

ctl-opt dftactgrp(*no);

dcl-pi P869;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P136.rpgleinc'
/copy 'qrpgleref/P204.rpgleinc'
/copy 'qrpgleref/P178.rpgleinc'

dcl-ds theTable extname('T364') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T364 LIMIT 1;

theCharVar = 'Hello from P869';
dsply theCharVar;
callp localProc();
P136();
P204();
P178();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P869 in the procedure';
end-proc;