**free

ctl-opt dftactgrp(*no);

dcl-pi P2862;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P860.rpgleinc'
/copy 'qrpgleref/P2367.rpgleinc'
/copy 'qrpgleref/P1517.rpgleinc'

dcl-ds theTable extname('T1593') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1593 LIMIT 1;

theCharVar = 'Hello from P2862';
dsply theCharVar;
callp localProc();
P860();
P2367();
P1517();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2862 in the procedure';
end-proc;