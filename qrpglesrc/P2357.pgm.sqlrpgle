**free

ctl-opt dftactgrp(*no);

dcl-pi P2357;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1360.rpgleinc'
/copy 'qrpgleref/P885.rpgleinc'
/copy 'qrpgleref/P986.rpgleinc'

dcl-ds theTable extname('T1424') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1424 LIMIT 1;

theCharVar = 'Hello from P2357';
dsply theCharVar;
callp localProc();
P1360();
P885();
P986();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2357 in the procedure';
end-proc;