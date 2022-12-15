**free

ctl-opt dftactgrp(*no);

dcl-pi P100;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P56.rpgleinc'
/copy 'qrpgleref/P79.rpgleinc'
/copy 'qrpgleref/P43.rpgleinc'

dcl-ds theTable extname('T470') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T470 LIMIT 1;

theCharVar = 'Hello from P100';
dsply theCharVar;
callp localProc();
P56();
P79();
P43();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P100 in the procedure';
end-proc;