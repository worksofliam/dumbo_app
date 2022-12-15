**free

ctl-opt dftactgrp(*no);

dcl-pi P4534;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1408.rpgleinc'
/copy 'qrpgleref/P1627.rpgleinc'
/copy 'qrpgleref/P1146.rpgleinc'

dcl-ds theTable extname('T465') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T465 LIMIT 1;

theCharVar = 'Hello from P4534';
dsply theCharVar;
callp localProc();
P1408();
P1627();
P1146();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4534 in the procedure';
end-proc;