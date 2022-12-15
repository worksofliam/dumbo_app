**free

ctl-opt dftactgrp(*no);

dcl-pi P2563;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P697.rpgleinc'
/copy 'qrpgleref/P1533.rpgleinc'
/copy 'qrpgleref/P559.rpgleinc'

dcl-ds theTable extname('T483') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T483 LIMIT 1;

theCharVar = 'Hello from P2563';
dsply theCharVar;
callp localProc();
P697();
P1533();
P559();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2563 in the procedure';
end-proc;