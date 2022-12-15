**free

ctl-opt dftactgrp(*no);

dcl-pi P489;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P343.rpgleinc'
/copy 'qrpgleref/P285.rpgleinc'
/copy 'qrpgleref/P51.rpgleinc'

dcl-ds theTable extname('T1016') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1016 LIMIT 1;

theCharVar = 'Hello from P489';
dsply theCharVar;
P343();
P285();
P51();
return;