**free

ctl-opt dftactgrp(*no);

dcl-pi P2541;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2538.rpgleinc'
/copy 'qrpgleref/P657.rpgleinc'
/copy 'qrpgleref/P2457.rpgleinc'

dcl-ds theTable extname('T402') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T402 LIMIT 1;

theCharVar = 'Hello from P2541';
dsply theCharVar;
callp localProc();
P2538();
P657();
P2457();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2541 in the procedure';
end-proc;