**free

ctl-opt dftactgrp(*no);

dcl-pi P2170;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1570.rpgleinc'
/copy 'qrpgleref/P635.rpgleinc'
/copy 'qrpgleref/P1690.rpgleinc'

dcl-ds theTable extname('T105') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T105 LIMIT 1;

theCharVar = 'Hello from P2170';
dsply theCharVar;
callp localProc();
P1570();
P635();
P1690();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2170 in the procedure';
end-proc;