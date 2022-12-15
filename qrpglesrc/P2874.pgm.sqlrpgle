**free

ctl-opt dftactgrp(*no);

dcl-pi P2874;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1854.rpgleinc'
/copy 'qrpgleref/P2407.rpgleinc'
/copy 'qrpgleref/P1514.rpgleinc'

dcl-ds theTable extname('T1625') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1625 LIMIT 1;

theCharVar = 'Hello from P2874';
dsply theCharVar;
callp localProc();
P1854();
P2407();
P1514();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2874 in the procedure';
end-proc;