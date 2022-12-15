**free

ctl-opt dftactgrp(*no);

dcl-pi P140;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P93.rpgleinc'
/copy 'qrpgleref/P125.rpgleinc'
/copy 'qrpgleref/P137.rpgleinc'

dcl-ds theTable extname('T0') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T0 LIMIT 1;

theCharVar = 'Hello from P140';
dsply theCharVar;
callp localProc();
P93();
P125();
P137();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P140 in the procedure';
end-proc;