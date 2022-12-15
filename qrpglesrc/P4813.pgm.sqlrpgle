**free

ctl-opt dftactgrp(*no);

dcl-pi P4813;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1081.rpgleinc'
/copy 'qrpgleref/P2898.rpgleinc'
/copy 'qrpgleref/P4050.rpgleinc'

dcl-ds theTable extname('T587') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T587 LIMIT 1;

theCharVar = 'Hello from P4813';
dsply theCharVar;
callp localProc();
P1081();
P2898();
P4050();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4813 in the procedure';
end-proc;