**free

ctl-opt dftactgrp(*no);

dcl-pi P2947;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2627.rpgleinc'
/copy 'qrpgleref/P1691.rpgleinc'
/copy 'qrpgleref/P801.rpgleinc'

dcl-ds theTable extname('T404') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T404 LIMIT 1;

theCharVar = 'Hello from P2947';
dsply theCharVar;
P2627();
P1691();
P801();
return;