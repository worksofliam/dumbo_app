**free

ctl-opt dftactgrp(*no);

dcl-pi P4342;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P343.rpgleinc'
/copy 'qrpgleref/P3046.rpgleinc'
/copy 'qrpgleref/P563.rpgleinc'

dcl-ds theTable extname('T1448') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1448 LIMIT 1;

theCharVar = 'Hello from P4342';
dsply theCharVar;
P343();
P3046();
P563();
return;