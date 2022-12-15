**free

ctl-opt dftactgrp(*no);

dcl-pi P1039;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P840.rpgleinc'
/copy 'qrpgleref/P551.rpgleinc'
/copy 'qrpgleref/P921.rpgleinc'

dcl-ds theTable extname('T778') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T778 LIMIT 1;

theCharVar = 'Hello from P1039';
dsply theCharVar;
P840();
P551();
P921();
return;