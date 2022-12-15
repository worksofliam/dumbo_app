**free

ctl-opt dftactgrp(*no);

dcl-pi P2666;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1424.rpgleinc'
/copy 'qrpgleref/P2535.rpgleinc'
/copy 'qrpgleref/P1722.rpgleinc'

dcl-ds theTable extname('T895') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T895 LIMIT 1;

theCharVar = 'Hello from P2666';
dsply theCharVar;
P1424();
P2535();
P1722();
return;