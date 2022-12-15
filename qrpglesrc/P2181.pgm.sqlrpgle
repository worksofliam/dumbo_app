**free

ctl-opt dftactgrp(*no);

dcl-pi P2181;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1479.rpgleinc'
/copy 'qrpgleref/P1416.rpgleinc'
/copy 'qrpgleref/P277.rpgleinc'

dcl-ds theTable extname('T696') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T696 LIMIT 1;

theCharVar = 'Hello from P2181';
dsply theCharVar;
callp localProc();
P1479();
P1416();
P277();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2181 in the procedure';
end-proc;