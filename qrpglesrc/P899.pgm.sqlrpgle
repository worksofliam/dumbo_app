**free

ctl-opt dftactgrp(*no);

dcl-pi P899;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P97.rpgleinc'
/copy 'qrpgleref/P704.rpgleinc'
/copy 'qrpgleref/P343.rpgleinc'

dcl-ds theTable extname('T1862') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1862 LIMIT 1;

theCharVar = 'Hello from P899';
dsply theCharVar;
P97();
P704();
P343();
return;