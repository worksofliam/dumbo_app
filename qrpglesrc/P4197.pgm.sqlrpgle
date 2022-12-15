**free

ctl-opt dftactgrp(*no);

dcl-pi P4197;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P343.rpgleinc'
/copy 'qrpgleref/P3340.rpgleinc'
/copy 'qrpgleref/P1119.rpgleinc'

dcl-ds theTable extname('T1005') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1005 LIMIT 1;

theCharVar = 'Hello from P4197';
dsply theCharVar;
P343();
P3340();
P1119();
return;