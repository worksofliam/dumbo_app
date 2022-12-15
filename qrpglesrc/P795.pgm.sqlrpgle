**free

ctl-opt dftactgrp(*no);

dcl-pi P795;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P343.rpgleinc'
/copy 'qrpgleref/P445.rpgleinc'
/copy 'qrpgleref/P79.rpgleinc'

dcl-ds theTable extname('T806') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T806 LIMIT 1;

theCharVar = 'Hello from P795';
dsply theCharVar;
P343();
P445();
P79();
return;