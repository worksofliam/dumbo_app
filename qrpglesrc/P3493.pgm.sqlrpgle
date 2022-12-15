**free

ctl-opt dftactgrp(*no);

dcl-pi P3493;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3037.rpgleinc'
/copy 'qrpgleref/P1442.rpgleinc'
/copy 'qrpgleref/P2078.rpgleinc'

dcl-ds theTable extname('T414') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T414 LIMIT 1;

theCharVar = 'Hello from P3493';
dsply theCharVar;
callp localProc();
P3037();
P1442();
P2078();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3493 in the procedure';
end-proc;