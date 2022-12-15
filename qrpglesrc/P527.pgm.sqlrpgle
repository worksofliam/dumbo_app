**free

ctl-opt dftactgrp(*no);

dcl-pi P527;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P460.rpgleinc'
/copy 'qrpgleref/P505.rpgleinc'
/copy 'qrpgleref/P499.rpgleinc'

dcl-ds theTable extname('T63') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T63 LIMIT 1;

theCharVar = 'Hello from P527';
dsply theCharVar;
callp localProc();
P460();
P505();
P499();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P527 in the procedure';
end-proc;