**free

ctl-opt dftactgrp(*no);

dcl-pi P2748;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1219.rpgleinc'
/copy 'qrpgleref/P2426.rpgleinc'
/copy 'qrpgleref/P2150.rpgleinc'

dcl-ds theTable extname('T483') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T483 LIMIT 1;

theCharVar = 'Hello from P2748';
dsply theCharVar;
callp localProc();
P1219();
P2426();
P2150();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2748 in the procedure';
end-proc;