**free

ctl-opt dftactgrp(*no);

dcl-pi P2066;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P450.rpgleinc'
/copy 'qrpgleref/P964.rpgleinc'
/copy 'qrpgleref/P1765.rpgleinc'

dcl-ds theTable extname('T737') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T737 LIMIT 1;

theCharVar = 'Hello from P2066';
dsply theCharVar;
P450();
P964();
P1765();
return;