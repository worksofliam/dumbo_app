**free

ctl-opt dftactgrp(*no);

dcl-pi P1063;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P901.rpgleinc'
/copy 'qrpgleref/P964.rpgleinc'
/copy 'qrpgleref/P120.rpgleinc'

dcl-ds theTable extname('T61') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T61 LIMIT 1;

theCharVar = 'Hello from P1063';
dsply theCharVar;
P901();
P964();
P120();
return;