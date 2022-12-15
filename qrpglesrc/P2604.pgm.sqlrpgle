**free

ctl-opt dftactgrp(*no);

dcl-pi P2604;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P499.rpgleinc'
/copy 'qrpgleref/P2105.rpgleinc'
/copy 'qrpgleref/P2601.rpgleinc'

dcl-ds theTable extname('T669') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T669 LIMIT 1;

theCharVar = 'Hello from P2604';
dsply theCharVar;
callp localProc();
P499();
P2105();
P2601();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2604 in the procedure';
end-proc;