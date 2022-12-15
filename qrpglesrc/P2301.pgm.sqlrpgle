**free

ctl-opt dftactgrp(*no);

dcl-pi P2301;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1929.rpgleinc'
/copy 'qrpgleref/P1916.rpgleinc'
/copy 'qrpgleref/P1636.rpgleinc'

dcl-ds theTable extname('T74') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T74 LIMIT 1;

theCharVar = 'Hello from P2301';
dsply theCharVar;
P1929();
P1916();
P1636();
return;