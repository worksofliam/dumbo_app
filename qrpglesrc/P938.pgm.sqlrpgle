**free

ctl-opt dftactgrp(*no);

dcl-pi P938;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P497.rpgleinc'
/copy 'qrpgleref/P108.rpgleinc'
/copy 'qrpgleref/P868.rpgleinc'

dcl-ds theTable extname('T1014') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1014 LIMIT 1;

theCharVar = 'Hello from P938';
dsply theCharVar;
callp localProc();
P497();
P108();
P868();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P938 in the procedure';
end-proc;