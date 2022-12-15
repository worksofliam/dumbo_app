**free

ctl-opt dftactgrp(*no);

dcl-pi P3527;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2458.rpgleinc'
/copy 'qrpgleref/P1343.rpgleinc'
/copy 'qrpgleref/P2157.rpgleinc'

dcl-ds theTable extname('T1127') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1127 LIMIT 1;

theCharVar = 'Hello from P3527';
dsply theCharVar;
callp localProc();
P2458();
P1343();
P2157();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3527 in the procedure';
end-proc;