**free

ctl-opt dftactgrp(*no);

dcl-pi P3350;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1623.rpgleinc'
/copy 'qrpgleref/P2265.rpgleinc'
/copy 'qrpgleref/P1505.rpgleinc'

dcl-ds theTable extname('T275') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T275 LIMIT 1;

theCharVar = 'Hello from P3350';
dsply theCharVar;
callp localProc();
P1623();
P2265();
P1505();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3350 in the procedure';
end-proc;