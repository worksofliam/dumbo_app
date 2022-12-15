**free

ctl-opt dftactgrp(*no);

dcl-pi P2848;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P802.rpgleinc'
/copy 'qrpgleref/P1659.rpgleinc'
/copy 'qrpgleref/P1438.rpgleinc'

dcl-ds theTable extname('T533') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T533 LIMIT 1;

theCharVar = 'Hello from P2848';
dsply theCharVar;
callp localProc();
P802();
P1659();
P1438();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2848 in the procedure';
end-proc;