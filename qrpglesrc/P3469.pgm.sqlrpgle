**free

ctl-opt dftactgrp(*no);

dcl-pi P3469;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1380.rpgleinc'
/copy 'qrpgleref/P955.rpgleinc'
/copy 'qrpgleref/P1505.rpgleinc'

dcl-ds theTable extname('T1224') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1224 LIMIT 1;

theCharVar = 'Hello from P3469';
dsply theCharVar;
callp localProc();
P1380();
P955();
P1505();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3469 in the procedure';
end-proc;