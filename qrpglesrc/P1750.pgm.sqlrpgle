**free

ctl-opt dftactgrp(*no);

dcl-pi P1750;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P964.rpgleinc'
/copy 'qrpgleref/P414.rpgleinc'
/copy 'qrpgleref/P971.rpgleinc'

dcl-ds theTable extname('T911') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T911 LIMIT 1;

theCharVar = 'Hello from P1750';
dsply theCharVar;
P964();
P414();
P971();
return;