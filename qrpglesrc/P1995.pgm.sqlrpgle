**free

ctl-opt dftactgrp(*no);

dcl-pi P1995;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P607.rpgleinc'
/copy 'qrpgleref/P479.rpgleinc'
/copy 'qrpgleref/P1947.rpgleinc'

dcl-ds theTable extname('T1658') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1658 LIMIT 1;

theCharVar = 'Hello from P1995';
dsply theCharVar;
callp localProc();
P607();
P479();
P1947();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1995 in the procedure';
end-proc;