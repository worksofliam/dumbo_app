**free

ctl-opt dftactgrp(*no);

dcl-pi P1805;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P234.rpgleinc'
/copy 'qrpgleref/P1533.rpgleinc'
/copy 'qrpgleref/P872.rpgleinc'

dcl-ds theTable extname('T1125') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1125 LIMIT 1;

theCharVar = 'Hello from P1805';
dsply theCharVar;
callp localProc();
P234();
P1533();
P872();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1805 in the procedure';
end-proc;