**free

ctl-opt dftactgrp(*no);

dcl-pi P3991;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1758.rpgleinc'
/copy 'qrpgleref/P1352.rpgleinc'
/copy 'qrpgleref/P2653.rpgleinc'

dcl-ds theTable extname('T703') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T703 LIMIT 1;

theCharVar = 'Hello from P3991';
dsply theCharVar;
P1758();
P1352();
P2653();
return;