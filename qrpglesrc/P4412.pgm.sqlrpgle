**free

ctl-opt dftactgrp(*no);

dcl-pi P4412;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2396.rpgleinc'
/copy 'qrpgleref/P3986.rpgleinc'
/copy 'qrpgleref/P3108.rpgleinc'

dcl-ds theTable extname('T1270') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1270 LIMIT 1;

theCharVar = 'Hello from P4412';
dsply theCharVar;
callp localProc();
P2396();
P3986();
P3108();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4412 in the procedure';
end-proc;