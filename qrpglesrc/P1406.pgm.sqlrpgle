**free

ctl-opt dftactgrp(*no);

dcl-pi P1406;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P854.rpgleinc'
/copy 'qrpgleref/P1161.rpgleinc'
/copy 'qrpgleref/P1402.rpgleinc'

dcl-ds theTable extname('T816') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T816 LIMIT 1;

theCharVar = 'Hello from P1406';
dsply theCharVar;
callp localProc();
P854();
P1161();
P1402();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1406 in the procedure';
end-proc;