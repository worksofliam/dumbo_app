**free

ctl-opt dftactgrp(*no);

dcl-pi P2596;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2033.rpgleinc'
/copy 'qrpgleref/P2144.rpgleinc'
/copy 'qrpgleref/P835.rpgleinc'

dcl-ds theTable extname('T554') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T554 LIMIT 1;

theCharVar = 'Hello from P2596';
dsply theCharVar;
callp localProc();
P2033();
P2144();
P835();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2596 in the procedure';
end-proc;