**free

ctl-opt dftactgrp(*no);

dcl-pi P2603;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1198.rpgleinc'
/copy 'qrpgleref/P561.rpgleinc'
/copy 'qrpgleref/P2149.rpgleinc'

dcl-ds theTable extname('T717') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T717 LIMIT 1;

theCharVar = 'Hello from P2603';
dsply theCharVar;
callp localProc();
P1198();
P561();
P2149();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2603 in the procedure';
end-proc;