**free

ctl-opt dftactgrp(*no);

dcl-pi P2870;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P343.rpgleinc'
/copy 'qrpgleref/P483.rpgleinc'
/copy 'qrpgleref/P652.rpgleinc'

dcl-ds theTable extname('T1161') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1161 LIMIT 1;

theCharVar = 'Hello from P2870';
dsply theCharVar;
P343();
P483();
P652();
return;