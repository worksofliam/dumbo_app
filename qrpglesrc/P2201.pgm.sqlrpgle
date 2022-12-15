**free

ctl-opt dftactgrp(*no);

dcl-pi P2201;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P808.rpgleinc'
/copy 'qrpgleref/P364.rpgleinc'
/copy 'qrpgleref/P2083.rpgleinc'

dcl-ds theTable extname('T609') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T609 LIMIT 1;

theCharVar = 'Hello from P2201';
dsply theCharVar;
callp localProc();
P808();
P364();
P2083();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2201 in the procedure';
end-proc;