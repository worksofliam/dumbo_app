**free

ctl-opt dftactgrp(*no);

dcl-pi P4406;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P99.rpgleinc'
/copy 'qrpgleref/P2176.rpgleinc'
/copy 'qrpgleref/P1968.rpgleinc'

dcl-ds theTable extname('T834') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T834 LIMIT 1;

theCharVar = 'Hello from P4406';
dsply theCharVar;
callp localProc();
P99();
P2176();
P1968();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4406 in the procedure';
end-proc;