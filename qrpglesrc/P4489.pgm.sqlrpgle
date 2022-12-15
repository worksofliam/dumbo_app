**free

ctl-opt dftactgrp(*no);

dcl-pi P4489;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P519.rpgleinc'
/copy 'qrpgleref/P3700.rpgleinc'
/copy 'qrpgleref/P2805.rpgleinc'

dcl-ds theTable extname('T619') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T619 LIMIT 1;

theCharVar = 'Hello from P4489';
dsply theCharVar;
P519();
P3700();
P2805();
return;