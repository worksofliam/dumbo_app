**free

ctl-opt dftactgrp(*no);

dcl-pi P3702;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1457.rpgleinc'
/copy 'qrpgleref/P619.rpgleinc'
/copy 'qrpgleref/P2114.rpgleinc'

dcl-ds theTable extname('T1162') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1162 LIMIT 1;

theCharVar = 'Hello from P3702';
dsply theCharVar;
callp localProc();
P1457();
P619();
P2114();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3702 in the procedure';
end-proc;