**free

ctl-opt dftactgrp(*no);

dcl-pi P1860;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P76.rpgleinc'
/copy 'qrpgleref/P1453.rpgleinc'
/copy 'qrpgleref/P538.rpgleinc'

dcl-ds theTable extname('T1430') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1430 LIMIT 1;

theCharVar = 'Hello from P1860';
dsply theCharVar;
callp localProc();
P76();
P1453();
P538();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1860 in the procedure';
end-proc;