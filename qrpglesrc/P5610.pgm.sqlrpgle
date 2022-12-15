**free

ctl-opt dftactgrp(*no);

dcl-pi P5610;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4011.rpgleinc'
/copy 'qrpgleref/P1371.rpgleinc'
/copy 'qrpgleref/P2135.rpgleinc'

dcl-ds theTable extname('T1471') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1471 LIMIT 1;

theCharVar = 'Hello from P5610';
dsply theCharVar;
callp localProc();
P4011();
P1371();
P2135();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5610 in the procedure';
end-proc;