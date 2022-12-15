**free

ctl-opt dftactgrp(*no);

dcl-pi P1592;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1402.rpgleinc'
/copy 'qrpgleref/P108.rpgleinc'
/copy 'qrpgleref/P841.rpgleinc'

dcl-ds theTable extname('T667') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T667 LIMIT 1;

theCharVar = 'Hello from P1592';
dsply theCharVar;
callp localProc();
P1402();
P108();
P841();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1592 in the procedure';
end-proc;