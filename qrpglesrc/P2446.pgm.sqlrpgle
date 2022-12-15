**free

ctl-opt dftactgrp(*no);

dcl-pi P2446;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1641.rpgleinc'
/copy 'qrpgleref/P938.rpgleinc'
/copy 'qrpgleref/P1165.rpgleinc'

dcl-ds theTable extname('T144') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T144 LIMIT 1;

theCharVar = 'Hello from P2446';
dsply theCharVar;
callp localProc();
P1641();
P938();
P1165();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2446 in the procedure';
end-proc;