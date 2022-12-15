**free

ctl-opt dftactgrp(*no);

dcl-pi P739;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P393.rpgleinc'
/copy 'qrpgleref/P280.rpgleinc'
/copy 'qrpgleref/P283.rpgleinc'

dcl-ds theTable extname('T491') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T491 LIMIT 1;

theCharVar = 'Hello from P739';
dsply theCharVar;
callp localProc();
P393();
P280();
P283();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P739 in the procedure';
end-proc;