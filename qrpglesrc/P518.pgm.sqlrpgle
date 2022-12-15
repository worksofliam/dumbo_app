**free

ctl-opt dftactgrp(*no);

dcl-pi P518;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P389.rpgleinc'
/copy 'qrpgleref/P343.rpgleinc'
/copy 'qrpgleref/P365.rpgleinc'

dcl-ds theTable extname('T247') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T247 LIMIT 1;

theCharVar = 'Hello from P518';
dsply theCharVar;
P389();
P343();
P365();
return;