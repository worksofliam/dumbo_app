**free

ctl-opt dftactgrp(*no);

dcl-pi P2459;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2301.rpgleinc'
/copy 'qrpgleref/P1558.rpgleinc'
/copy 'qrpgleref/P88.rpgleinc'

dcl-ds theTable extname('T430') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T430 LIMIT 1;

theCharVar = 'Hello from P2459';
dsply theCharVar;
callp localProc();
P2301();
P1558();
P88();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2459 in the procedure';
end-proc;