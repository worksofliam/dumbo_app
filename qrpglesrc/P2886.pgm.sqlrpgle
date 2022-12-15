**free

ctl-opt dftactgrp(*no);

dcl-pi P2886;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1775.rpgleinc'
/copy 'qrpgleref/P202.rpgleinc'
/copy 'qrpgleref/P2377.rpgleinc'

dcl-ds theTable extname('T632') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T632 LIMIT 1;

theCharVar = 'Hello from P2886';
dsply theCharVar;
callp localProc();
P1775();
P202();
P2377();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2886 in the procedure';
end-proc;