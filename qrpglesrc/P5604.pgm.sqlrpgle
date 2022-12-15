**free

ctl-opt dftactgrp(*no);

dcl-pi P5604;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4403.rpgleinc'
/copy 'qrpgleref/P2466.rpgleinc'
/copy 'qrpgleref/P1168.rpgleinc'

dcl-ds theTable extname('T809') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T809 LIMIT 1;

theCharVar = 'Hello from P5604';
dsply theCharVar;
callp localProc();
P4403();
P2466();
P1168();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5604 in the procedure';
end-proc;