**free

ctl-opt dftactgrp(*no);

dcl-pi P3615;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2762.rpgleinc'
/copy 'qrpgleref/P1648.rpgleinc'
/copy 'qrpgleref/P1429.rpgleinc'

dcl-ds theTable extname('T1078') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1078 LIMIT 1;

theCharVar = 'Hello from P3615';
dsply theCharVar;
callp localProc();
P2762();
P1648();
P1429();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3615 in the procedure';
end-proc;