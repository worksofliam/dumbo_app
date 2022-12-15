**free

ctl-opt dftactgrp(*no);

dcl-pi P2246;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1443.rpgleinc'
/copy 'qrpgleref/P1691.rpgleinc'
/copy 'qrpgleref/P192.rpgleinc'

dcl-ds theTable extname('T851') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T851 LIMIT 1;

theCharVar = 'Hello from P2246';
dsply theCharVar;
P1443();
P1691();
P192();
return;