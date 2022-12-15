**free

ctl-opt dftactgrp(*no);

dcl-pi P764;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P332.rpgleinc'
/copy 'qrpgleref/P23.rpgleinc'
/copy 'qrpgleref/P100.rpgleinc'

dcl-ds theTable extname('T140') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T140 LIMIT 1;

theCharVar = 'Hello from P764';
dsply theCharVar;
callp localProc();
P332();
P23();
P100();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P764 in the procedure';
end-proc;