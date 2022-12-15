**free

ctl-opt dftactgrp(*no);

dcl-pi P4309;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P327.rpgleinc'
/copy 'qrpgleref/P1479.rpgleinc'
/copy 'qrpgleref/P3468.rpgleinc'

dcl-ds theTable extname('T358') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T358 LIMIT 1;

theCharVar = 'Hello from P4309';
dsply theCharVar;
P327();
P1479();
P3468();
return;