**free

ctl-opt dftactgrp(*no);

dcl-pi P2527;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2343.rpgleinc'
/copy 'qrpgleref/P1923.rpgleinc'
/copy 'qrpgleref/P161.rpgleinc'

dcl-ds theTable extname('T1846') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1846 LIMIT 1;

theCharVar = 'Hello from P2527';
dsply theCharVar;
callp localProc();
P2343();
P1923();
P161();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2527 in the procedure';
end-proc;