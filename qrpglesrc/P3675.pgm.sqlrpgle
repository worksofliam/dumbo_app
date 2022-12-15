**free

ctl-opt dftactgrp(*no);

dcl-pi P3675;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3438.rpgleinc'
/copy 'qrpgleref/P291.rpgleinc'
/copy 'qrpgleref/P892.rpgleinc'

dcl-ds theTable extname('T349') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T349 LIMIT 1;

theCharVar = 'Hello from P3675';
dsply theCharVar;
P3438();
P291();
P892();
return;