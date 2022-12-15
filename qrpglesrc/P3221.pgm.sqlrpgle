**free

ctl-opt dftactgrp(*no);

dcl-pi P3221;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P192.rpgleinc'
/copy 'qrpgleref/P868.rpgleinc'
/copy 'qrpgleref/P2059.rpgleinc'

dcl-ds theTable extname('T1591') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1591 LIMIT 1;

theCharVar = 'Hello from P3221';
dsply theCharVar;
P192();
P868();
P2059();
return;