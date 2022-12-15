**free

ctl-opt dftactgrp(*no);

dcl-pi P544;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P26.rpgleinc'
/copy 'qrpgleref/P343.rpgleinc'
/copy 'qrpgleref/P390.rpgleinc'

dcl-ds theTable extname('T177') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T177 LIMIT 1;

theCharVar = 'Hello from P544';
dsply theCharVar;
P26();
P343();
P390();
return;