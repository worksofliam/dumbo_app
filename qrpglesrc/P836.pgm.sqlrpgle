**free

ctl-opt dftactgrp(*no);

dcl-pi P836;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P338.rpgleinc'
/copy 'qrpgleref/P583.rpgleinc'
/copy 'qrpgleref/P221.rpgleinc'

dcl-ds theTable extname('T1633') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1633 LIMIT 1;

theCharVar = 'Hello from P836';
dsply theCharVar;
P338();
P583();
P221();
return;