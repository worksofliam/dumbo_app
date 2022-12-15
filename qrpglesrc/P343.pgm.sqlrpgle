**free

ctl-opt dftactgrp(*no);

dcl-pi P343;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P339.rpgleinc'
/copy 'qrpgleref/P316.rpgleinc'
/copy 'qrpgleref/P95.rpgleinc'

dcl-ds theTable extname('T235') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T235 LIMIT 1;

theCharVar = 'Hello from P343';
dsply theCharVar;
P339();
P316();
P95();
return;