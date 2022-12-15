**free

ctl-opt dftactgrp(*no);

dcl-pi P2526;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1421.rpgleinc'
/copy 'qrpgleref/P2392.rpgleinc'
/copy 'qrpgleref/P1305.rpgleinc'

dcl-ds theTable extname('T1640') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1640 LIMIT 1;

theCharVar = 'Hello from P2526';
dsply theCharVar;
callp localProc();
P1421();
P2392();
P1305();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2526 in the procedure';
end-proc;