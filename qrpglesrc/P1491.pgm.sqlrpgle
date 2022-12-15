**free

ctl-opt dftactgrp(*no);

dcl-pi P1491;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P870.rpgleinc'
/copy 'qrpgleref/P1115.rpgleinc'
/copy 'qrpgleref/P1150.rpgleinc'

dcl-ds theTable extname('T1526') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1526 LIMIT 1;

theCharVar = 'Hello from P1491';
dsply theCharVar;
P870();
P1115();
P1150();
return;