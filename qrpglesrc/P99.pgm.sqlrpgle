**free

ctl-opt dftactgrp(*no);

dcl-pi P99;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P62.rpgleinc'
/copy 'qrpgleref/P46.rpgleinc'
/copy 'qrpgleref/P90.rpgleinc'

dcl-ds theTable extname('T372') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T372 LIMIT 1;

theCharVar = 'Hello from P99';
dsply theCharVar;
callp localProc();
P62();
P46();
P90();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P99 in the procedure';
end-proc;