**free

ctl-opt dftactgrp(*no);

dcl-pi P488;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P140.rpgleinc'
/copy 'qrpgleref/P236.rpgleinc'
/copy 'qrpgleref/P285.rpgleinc'

dcl-ds theTable extname('T840') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T840 LIMIT 1;

theCharVar = 'Hello from P488';
dsply theCharVar;
callp localProc();
P140();
P236();
P285();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P488 in the procedure';
end-proc;