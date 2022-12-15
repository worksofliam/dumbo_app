**free

ctl-opt dftactgrp(*no);

dcl-pi P2398;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1700.rpgleinc'
/copy 'qrpgleref/P1168.rpgleinc'
/copy 'qrpgleref/P1848.rpgleinc'

dcl-ds theTable extname('T1571') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1571 LIMIT 1;

theCharVar = 'Hello from P2398';
dsply theCharVar;
callp localProc();
P1700();
P1168();
P1848();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2398 in the procedure';
end-proc;