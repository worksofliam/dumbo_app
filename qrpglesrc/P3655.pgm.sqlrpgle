**free

ctl-opt dftactgrp(*no);

dcl-pi P3655;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1808.rpgleinc'
/copy 'qrpgleref/P2342.rpgleinc'
/copy 'qrpgleref/P2402.rpgleinc'

dcl-ds theTable extname('T1422') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1422 LIMIT 1;

theCharVar = 'Hello from P3655';
dsply theCharVar;
callp localProc();
P1808();
P2342();
P2402();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3655 in the procedure';
end-proc;