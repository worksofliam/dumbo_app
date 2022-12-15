**free

ctl-opt dftactgrp(*no);

dcl-pi P2649;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P134.rpgleinc'
/copy 'qrpgleref/P1885.rpgleinc'
/copy 'qrpgleref/P2144.rpgleinc'

dcl-ds theTable extname('T712') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T712 LIMIT 1;

theCharVar = 'Hello from P2649';
dsply theCharVar;
callp localProc();
P134();
P1885();
P2144();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2649 in the procedure';
end-proc;