**free

ctl-opt dftactgrp(*no);

dcl-pi P2355;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P282.rpgleinc'
/copy 'qrpgleref/P350.rpgleinc'
/copy 'qrpgleref/P552.rpgleinc'

dcl-ds theTable extname('T1557') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1557 LIMIT 1;

theCharVar = 'Hello from P2355';
dsply theCharVar;
P282();
P350();
P552();
return;