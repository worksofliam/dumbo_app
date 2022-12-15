**free

ctl-opt dftactgrp(*no);

dcl-pi P1528;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P56.rpgleinc'
/copy 'qrpgleref/P1358.rpgleinc'
/copy 'qrpgleref/P233.rpgleinc'

dcl-ds theTable extname('T860') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T860 LIMIT 1;

theCharVar = 'Hello from P1528';
dsply theCharVar;
callp localProc();
P56();
P1358();
P233();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1528 in the procedure';
end-proc;