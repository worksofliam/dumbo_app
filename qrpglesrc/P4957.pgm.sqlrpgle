**free

ctl-opt dftactgrp(*no);

dcl-pi P4957;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P60.rpgleinc'
/copy 'qrpgleref/P233.rpgleinc'
/copy 'qrpgleref/P2227.rpgleinc'

dcl-ds theTable extname('T616') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T616 LIMIT 1;

theCharVar = 'Hello from P4957';
dsply theCharVar;
callp localProc();
P60();
P233();
P2227();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4957 in the procedure';
end-proc;