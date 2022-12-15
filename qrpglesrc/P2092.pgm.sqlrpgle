**free

ctl-opt dftactgrp(*no);

dcl-pi P2092;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P76.rpgleinc'
/copy 'qrpgleref/P1459.rpgleinc'
/copy 'qrpgleref/P102.rpgleinc'

dcl-ds theTable extname('T1797') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1797 LIMIT 1;

theCharVar = 'Hello from P2092';
dsply theCharVar;
callp localProc();
P76();
P1459();
P102();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2092 in the procedure';
end-proc;