**free

ctl-opt dftactgrp(*no);

dcl-pi P2516;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1306.rpgleinc'
/copy 'qrpgleref/P2267.rpgleinc'
/copy 'qrpgleref/P260.rpgleinc'

dcl-ds theTable extname('T1640') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1640 LIMIT 1;

theCharVar = 'Hello from P2516';
dsply theCharVar;
callp localProc();
P1306();
P2267();
P260();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2516 in the procedure';
end-proc;