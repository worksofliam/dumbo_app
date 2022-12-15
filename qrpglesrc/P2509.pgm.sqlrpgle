**free

ctl-opt dftactgrp(*no);

dcl-pi P2509;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1151.rpgleinc'
/copy 'qrpgleref/P923.rpgleinc'
/copy 'qrpgleref/P2250.rpgleinc'

dcl-ds theTable extname('T1392') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1392 LIMIT 1;

theCharVar = 'Hello from P2509';
dsply theCharVar;
callp localProc();
P1151();
P923();
P2250();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2509 in the procedure';
end-proc;