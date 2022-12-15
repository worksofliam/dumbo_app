**free

ctl-opt dftactgrp(*no);

dcl-pi P2147;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P307.rpgleinc'
/copy 'qrpgleref/P1737.rpgleinc'
/copy 'qrpgleref/P1375.rpgleinc'

dcl-ds theTable extname('T1472') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1472 LIMIT 1;

theCharVar = 'Hello from P2147';
dsply theCharVar;
callp localProc();
P307();
P1737();
P1375();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2147 in the procedure';
end-proc;