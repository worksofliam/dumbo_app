**free

ctl-opt dftactgrp(*no);

dcl-pi P624;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P165.rpgleinc'
/copy 'qrpgleref/P366.rpgleinc'
/copy 'qrpgleref/P507.rpgleinc'

dcl-ds theTable extname('T552') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T552 LIMIT 1;

theCharVar = 'Hello from P624';
dsply theCharVar;
callp localProc();
P165();
P366();
P507();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P624 in the procedure';
end-proc;