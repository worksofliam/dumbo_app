**free

ctl-opt dftactgrp(*no);

dcl-pi P1022;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P293.rpgleinc'
/copy 'qrpgleref/P964.rpgleinc'
/copy 'qrpgleref/P417.rpgleinc'

dcl-ds theTable extname('T1587') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1587 LIMIT 1;

theCharVar = 'Hello from P1022';
dsply theCharVar;
P293();
P964();
P417();
return;