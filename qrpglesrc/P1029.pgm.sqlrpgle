**free

ctl-opt dftactgrp(*no);

dcl-pi P1029;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P143.rpgleinc'
/copy 'qrpgleref/P343.rpgleinc'
/copy 'qrpgleref/P251.rpgleinc'

dcl-ds theTable extname('T408') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T408 LIMIT 1;

theCharVar = 'Hello from P1029';
dsply theCharVar;
P143();
P343();
P251();
return;