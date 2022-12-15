**free

ctl-opt dftactgrp(*no);

dcl-pi P2145;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P366.rpgleinc'
/copy 'qrpgleref/P1679.rpgleinc'
/copy 'qrpgleref/P867.rpgleinc'

dcl-ds theTable extname('T1521') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1521 LIMIT 1;

theCharVar = 'Hello from P2145';
dsply theCharVar;
callp localProc();
P366();
P1679();
P867();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2145 in the procedure';
end-proc;