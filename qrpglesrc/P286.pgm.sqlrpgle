**free

ctl-opt dftactgrp(*no);

dcl-pi P286;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P99.rpgleinc'
/copy 'qrpgleref/P233.rpgleinc'
/copy 'qrpgleref/P265.rpgleinc'

dcl-ds theTable extname('T1036') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1036 LIMIT 1;

theCharVar = 'Hello from P286';
dsply theCharVar;
callp localProc();
P99();
P233();
P265();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P286 in the procedure';
end-proc;