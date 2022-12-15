**free

ctl-opt dftactgrp(*no);

dcl-pi P1669;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1329.rpgleinc'
/copy 'qrpgleref/P816.rpgleinc'
/copy 'qrpgleref/P1282.rpgleinc'

dcl-ds theTable extname('T1369') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1369 LIMIT 1;

theCharVar = 'Hello from P1669';
dsply theCharVar;
P1329();
P816();
P1282();
return;