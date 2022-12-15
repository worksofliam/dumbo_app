**free

ctl-opt dftactgrp(*no);

dcl-pi P2114;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1453.rpgleinc'
/copy 'qrpgleref/P1434.rpgleinc'
/copy 'qrpgleref/P1555.rpgleinc'

dcl-ds theTable extname('T793') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T793 LIMIT 1;

theCharVar = 'Hello from P2114';
dsply theCharVar;
callp localProc();
P1453();
P1434();
P1555();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2114 in the procedure';
end-proc;