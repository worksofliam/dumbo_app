**free

ctl-opt dftactgrp(*no);

dcl-pi P4258;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P662.rpgleinc'
/copy 'qrpgleref/P2634.rpgleinc'
/copy 'qrpgleref/P515.rpgleinc'

dcl-ds theTable extname('T494') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T494 LIMIT 1;

theCharVar = 'Hello from P4258';
dsply theCharVar;
callp localProc();
P662();
P2634();
P515();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4258 in the procedure';
end-proc;