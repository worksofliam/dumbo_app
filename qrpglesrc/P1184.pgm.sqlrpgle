**free

ctl-opt dftactgrp(*no);

dcl-pi P1184;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1019.rpgleinc'
/copy 'qrpgleref/P99.rpgleinc'
/copy 'qrpgleref/P666.rpgleinc'

dcl-ds theTable extname('T613') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T613 LIMIT 1;

theCharVar = 'Hello from P1184';
dsply theCharVar;
callp localProc();
P1019();
P99();
P666();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1184 in the procedure';
end-proc;