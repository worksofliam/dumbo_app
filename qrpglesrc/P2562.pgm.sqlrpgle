**free

ctl-opt dftactgrp(*no);

dcl-pi P2562;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P585.rpgleinc'
/copy 'qrpgleref/P2466.rpgleinc'
/copy 'qrpgleref/P2551.rpgleinc'

dcl-ds theTable extname('T1241') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1241 LIMIT 1;

theCharVar = 'Hello from P2562';
dsply theCharVar;
callp localProc();
P585();
P2466();
P2551();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2562 in the procedure';
end-proc;