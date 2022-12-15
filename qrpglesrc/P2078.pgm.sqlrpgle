**free

ctl-opt dftactgrp(*no);

dcl-pi P2078;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1691.rpgleinc'
/copy 'qrpgleref/P696.rpgleinc'
/copy 'qrpgleref/P1041.rpgleinc'

dcl-ds theTable extname('T320') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T320 LIMIT 1;

theCharVar = 'Hello from P2078';
dsply theCharVar;
callp localProc();
P1691();
P696();
P1041();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2078 in the procedure';
end-proc;