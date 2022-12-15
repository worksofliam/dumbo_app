**free

ctl-opt dftactgrp(*no);

dcl-pi P1911;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P613.rpgleinc'
/copy 'qrpgleref/P76.rpgleinc'
/copy 'qrpgleref/P593.rpgleinc'

dcl-ds theTable extname('T562') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T562 LIMIT 1;

theCharVar = 'Hello from P1911';
dsply theCharVar;
callp localProc();
P613();
P76();
P593();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1911 in the procedure';
end-proc;