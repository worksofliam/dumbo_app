**free

ctl-opt dftactgrp(*no);

dcl-pi P4732;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3866.rpgleinc'
/copy 'qrpgleref/P2947.rpgleinc'
/copy 'qrpgleref/P1399.rpgleinc'

dcl-ds theTable extname('T1027') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1027 LIMIT 1;

theCharVar = 'Hello from P4732';
dsply theCharVar;
callp localProc();
P3866();
P2947();
P1399();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4732 in the procedure';
end-proc;