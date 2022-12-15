**free

ctl-opt dftactgrp(*no);

dcl-pi P1546;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1411.rpgleinc'
/copy 'qrpgleref/P99.rpgleinc'
/copy 'qrpgleref/P1333.rpgleinc'

dcl-ds theTable extname('T1669') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1669 LIMIT 1;

theCharVar = 'Hello from P1546';
dsply theCharVar;
callp localProc();
P1411();
P99();
P1333();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1546 in the procedure';
end-proc;