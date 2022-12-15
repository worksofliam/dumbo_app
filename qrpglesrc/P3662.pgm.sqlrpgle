**free

ctl-opt dftactgrp(*no);

dcl-pi P3662;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2259.rpgleinc'
/copy 'qrpgleref/P1828.rpgleinc'
/copy 'qrpgleref/P120.rpgleinc'

dcl-ds theTable extname('T56') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T56 LIMIT 1;

theCharVar = 'Hello from P3662';
dsply theCharVar;
callp localProc();
P2259();
P1828();
P120();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3662 in the procedure';
end-proc;