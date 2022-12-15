**free

ctl-opt dftactgrp(*no);

dcl-pi P1258;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P879.rpgleinc'
/copy 'qrpgleref/P493.rpgleinc'
/copy 'qrpgleref/P172.rpgleinc'

dcl-ds theTable extname('T62') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T62 LIMIT 1;

theCharVar = 'Hello from P1258';
dsply theCharVar;
callp localProc();
P879();
P493();
P172();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1258 in the procedure';
end-proc;