**free

ctl-opt dftactgrp(*no);

dcl-pi P1060;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P736.rpgleinc'
/copy 'qrpgleref/P913.rpgleinc'
/copy 'qrpgleref/P217.rpgleinc'

dcl-ds theTable extname('T398') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T398 LIMIT 1;

theCharVar = 'Hello from P1060';
dsply theCharVar;
callp localProc();
P736();
P913();
P217();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1060 in the procedure';
end-proc;