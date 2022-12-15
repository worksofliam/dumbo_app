**free

ctl-opt dftactgrp(*no);

dcl-pi P2910;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P208.rpgleinc'
/copy 'qrpgleref/P1459.rpgleinc'
/copy 'qrpgleref/P441.rpgleinc'

dcl-ds theTable extname('T247') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T247 LIMIT 1;

theCharVar = 'Hello from P2910';
dsply theCharVar;
callp localProc();
P208();
P1459();
P441();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2910 in the procedure';
end-proc;