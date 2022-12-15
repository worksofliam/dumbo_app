**free

ctl-opt dftactgrp(*no);

dcl-pi P1601;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P964.rpgleinc'
/copy 'qrpgleref/P1343.rpgleinc'
/copy 'qrpgleref/P1050.rpgleinc'

dcl-ds theTable extname('T788') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T788 LIMIT 1;

theCharVar = 'Hello from P1601';
dsply theCharVar;
P964();
P1343();
P1050();
return;