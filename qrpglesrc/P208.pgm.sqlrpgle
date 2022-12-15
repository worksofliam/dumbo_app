**free

ctl-opt dftactgrp(*no);

dcl-pi P208;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P99.rpgleinc'
/copy 'qrpgleref/P160.rpgleinc'
/copy 'qrpgleref/P125.rpgleinc'

dcl-ds theTable extname('T1069') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1069 LIMIT 1;

theCharVar = 'Hello from P208';
dsply theCharVar;
callp localProc();
P99();
P160();
P125();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P208 in the procedure';
end-proc;