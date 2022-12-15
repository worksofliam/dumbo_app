**free

ctl-opt dftactgrp(*no);

dcl-pi P2589;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1700.rpgleinc'
/copy 'qrpgleref/P1595.rpgleinc'
/copy 'qrpgleref/P1532.rpgleinc'

dcl-ds theTable extname('T46') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T46 LIMIT 1;

theCharVar = 'Hello from P2589';
dsply theCharVar;
callp localProc();
P1700();
P1595();
P1532();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2589 in the procedure';
end-proc;