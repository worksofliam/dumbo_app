**free

ctl-opt dftactgrp(*no);

dcl-pi P2454;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1637.rpgleinc'
/copy 'qrpgleref/P345.rpgleinc'
/copy 'qrpgleref/P1934.rpgleinc'

dcl-ds theTable extname('T1685') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1685 LIMIT 1;

theCharVar = 'Hello from P2454';
dsply theCharVar;
callp localProc();
P1637();
P345();
P1934();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2454 in the procedure';
end-proc;