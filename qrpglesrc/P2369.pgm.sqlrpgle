**free

ctl-opt dftactgrp(*no);

dcl-pi P2369;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1474.rpgleinc'
/copy 'qrpgleref/P1529.rpgleinc'
/copy 'qrpgleref/P1669.rpgleinc'

dcl-ds theTable extname('T327') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T327 LIMIT 1;

theCharVar = 'Hello from P2369';
dsply theCharVar;
callp localProc();
P1474();
P1529();
P1669();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2369 in the procedure';
end-proc;