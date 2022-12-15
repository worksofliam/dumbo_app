**free

ctl-opt dftactgrp(*no);

dcl-pi P2973;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2394.rpgleinc'
/copy 'qrpgleref/P2428.rpgleinc'
/copy 'qrpgleref/P1257.rpgleinc'

dcl-ds theTable extname('T243') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T243 LIMIT 1;

theCharVar = 'Hello from P2973';
dsply theCharVar;
callp localProc();
P2394();
P2428();
P1257();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2973 in the procedure';
end-proc;