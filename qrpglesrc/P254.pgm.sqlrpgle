**free

ctl-opt dftactgrp(*no);

dcl-pi P254;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P152.rpgleinc'
/copy 'qrpgleref/P172.rpgleinc'
/copy 'qrpgleref/P142.rpgleinc'

dcl-ds theTable extname('T119') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T119 LIMIT 1;

theCharVar = 'Hello from P254';
dsply theCharVar;
callp localProc();
P152();
P172();
P142();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P254 in the procedure';
end-proc;