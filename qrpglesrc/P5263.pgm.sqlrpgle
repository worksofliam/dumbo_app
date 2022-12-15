**free

ctl-opt dftactgrp(*no);

dcl-pi P5263;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P233.rpgleinc'
/copy 'qrpgleref/P724.rpgleinc'
/copy 'qrpgleref/P2044.rpgleinc'

dcl-ds theTable extname('T1695') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1695 LIMIT 1;

theCharVar = 'Hello from P5263';
dsply theCharVar;
P233();
P724();
P2044();
return;