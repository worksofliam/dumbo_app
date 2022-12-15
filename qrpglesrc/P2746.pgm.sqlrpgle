**free

ctl-opt dftactgrp(*no);

dcl-pi P2746;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1627.rpgleinc'
/copy 'qrpgleref/P2026.rpgleinc'
/copy 'qrpgleref/P2390.rpgleinc'

dcl-ds theTable extname('T502') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T502 LIMIT 1;

theCharVar = 'Hello from P2746';
dsply theCharVar;
callp localProc();
P1627();
P2026();
P2390();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2746 in the procedure';
end-proc;