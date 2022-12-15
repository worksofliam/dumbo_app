**free

ctl-opt dftactgrp(*no);

dcl-pi P2404;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1767.rpgleinc'
/copy 'qrpgleref/P1291.rpgleinc'
/copy 'qrpgleref/P1082.rpgleinc'

dcl-ds theTable extname('T237') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T237 LIMIT 1;

theCharVar = 'Hello from P2404';
dsply theCharVar;
P1767();
P1291();
P1082();
return;