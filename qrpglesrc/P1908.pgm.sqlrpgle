**free

ctl-opt dftactgrp(*no);

dcl-pi P1908;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1584.rpgleinc'
/copy 'qrpgleref/P583.rpgleinc'
/copy 'qrpgleref/P343.rpgleinc'

dcl-ds theTable extname('T353') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T353 LIMIT 1;

theCharVar = 'Hello from P1908';
dsply theCharVar;
P1584();
P583();
P343();
return;