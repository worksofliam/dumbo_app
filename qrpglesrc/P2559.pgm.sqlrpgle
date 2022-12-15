**free

ctl-opt dftactgrp(*no);

dcl-pi P2559;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P402.rpgleinc'
/copy 'qrpgleref/P653.rpgleinc'
/copy 'qrpgleref/P1408.rpgleinc'

dcl-ds theTable extname('T849') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T849 LIMIT 1;

theCharVar = 'Hello from P2559';
dsply theCharVar;
callp localProc();
P402();
P653();
P1408();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2559 in the procedure';
end-proc;