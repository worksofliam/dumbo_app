**free

ctl-opt dftactgrp(*no);

dcl-pi P2495;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2367.rpgleinc'
/copy 'qrpgleref/P1661.rpgleinc'
/copy 'qrpgleref/P1387.rpgleinc'

dcl-ds theTable extname('T50') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T50 LIMIT 1;

theCharVar = 'Hello from P2495';
dsply theCharVar;
callp localProc();
P2367();
P1661();
P1387();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2495 in the procedure';
end-proc;