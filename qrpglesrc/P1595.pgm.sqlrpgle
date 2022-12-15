**free

ctl-opt dftactgrp(*no);

dcl-pi P1595;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P75.rpgleinc'
/copy 'qrpgleref/P35.rpgleinc'
/copy 'qrpgleref/P1478.rpgleinc'

dcl-ds theTable extname('T1495') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1495 LIMIT 1;

theCharVar = 'Hello from P1595';
dsply theCharVar;
callp localProc();
P75();
P35();
P1478();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1595 in the procedure';
end-proc;