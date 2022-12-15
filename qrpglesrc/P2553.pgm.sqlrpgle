**free

ctl-opt dftactgrp(*no);

dcl-pi P2553;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P988.rpgleinc'
/copy 'qrpgleref/P197.rpgleinc'
/copy 'qrpgleref/P2250.rpgleinc'

dcl-ds theTable extname('T513') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T513 LIMIT 1;

theCharVar = 'Hello from P2553';
dsply theCharVar;
callp localProc();
P988();
P197();
P2250();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2553 in the procedure';
end-proc;