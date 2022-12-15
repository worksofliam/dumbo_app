**free

ctl-opt dftactgrp(*no);

dcl-pi P2330;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P83.rpgleinc'
/copy 'qrpgleref/P1332.rpgleinc'
/copy 'qrpgleref/P1499.rpgleinc'

dcl-ds theTable extname('T274') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T274 LIMIT 1;

theCharVar = 'Hello from P2330';
dsply theCharVar;
P83();
P1332();
P1499();
return;