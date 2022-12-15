**free

ctl-opt dftactgrp(*no);

dcl-pi P2527;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1352.rpgleinc'
/copy 'qrpgleref/P617.rpgleinc'
/copy 'qrpgleref/P1618.rpgleinc'

dcl-ds theTable extname('T1189') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1189 LIMIT 1;

theCharVar = 'Hello from P2527';
dsply theCharVar;
callp localProc();
P1352();
P617();
P1618();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2527 in the procedure';
end-proc;