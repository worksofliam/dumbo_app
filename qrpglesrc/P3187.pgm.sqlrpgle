**free

ctl-opt dftactgrp(*no);

dcl-pi P3187;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P32.rpgleinc'
/copy 'qrpgleref/P2289.rpgleinc'
/copy 'qrpgleref/P2058.rpgleinc'

dcl-ds theTable extname('T790') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T790 LIMIT 1;

theCharVar = 'Hello from P3187';
dsply theCharVar;
callp localProc();
P32();
P2289();
P2058();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3187 in the procedure';
end-proc;