**free

ctl-opt dftactgrp(*no);

dcl-pi P2994;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2477.rpgleinc'
/copy 'qrpgleref/P737.rpgleinc'
/copy 'qrpgleref/P2539.rpgleinc'

dcl-ds theTable extname('T616') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T616 LIMIT 1;

theCharVar = 'Hello from P2994';
dsply theCharVar;
callp localProc();
P2477();
P737();
P2539();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2994 in the procedure';
end-proc;