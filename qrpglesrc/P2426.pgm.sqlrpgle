**free

ctl-opt dftactgrp(*no);

dcl-pi P2426;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P579.rpgleinc'
/copy 'qrpgleref/P2179.rpgleinc'
/copy 'qrpgleref/P1847.rpgleinc'

dcl-ds theTable extname('T552') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T552 LIMIT 1;

theCharVar = 'Hello from P2426';
dsply theCharVar;
callp localProc();
P579();
P2179();
P1847();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2426 in the procedure';
end-proc;