**free

ctl-opt dftactgrp(*no);

dcl-pi P2474;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2329.rpgleinc'
/copy 'qrpgleref/P893.rpgleinc'
/copy 'qrpgleref/P1483.rpgleinc'

dcl-ds theTable extname('T664') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T664 LIMIT 1;

theCharVar = 'Hello from P2474';
dsply theCharVar;
callp localProc();
P2329();
P893();
P1483();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2474 in the procedure';
end-proc;