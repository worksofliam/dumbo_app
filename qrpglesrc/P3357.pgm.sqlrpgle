**free

ctl-opt dftactgrp(*no);

dcl-pi P3357;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2411.rpgleinc'
/copy 'qrpgleref/P2815.rpgleinc'
/copy 'qrpgleref/P1969.rpgleinc'

dcl-ds theTable extname('T192') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T192 LIMIT 1;

theCharVar = 'Hello from P3357';
dsply theCharVar;
callp localProc();
P2411();
P2815();
P1969();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3357 in the procedure';
end-proc;