**free

ctl-opt dftactgrp(*no);

dcl-pi P1914;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1452.rpgleinc'
/copy 'qrpgleref/P240.rpgleinc'
/copy 'qrpgleref/P904.rpgleinc'

dcl-ds theTable extname('T892') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T892 LIMIT 1;

theCharVar = 'Hello from P1914';
dsply theCharVar;
P1452();
P240();
P904();
return;