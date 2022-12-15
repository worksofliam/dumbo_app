**free

ctl-opt dftactgrp(*no);

dcl-pi P332;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P260.rpgleinc'
/copy 'qrpgleref/P241.rpgleinc'
/copy 'qrpgleref/P135.rpgleinc'

dcl-ds theTable extname('T390') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T390 LIMIT 1;

theCharVar = 'Hello from P332';
dsply theCharVar;
callp localProc();
P260();
P241();
P135();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P332 in the procedure';
end-proc;