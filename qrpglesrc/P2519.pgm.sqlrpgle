**free

ctl-opt dftactgrp(*no);

dcl-pi P2519;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1155.rpgleinc'
/copy 'qrpgleref/P1246.rpgleinc'
/copy 'qrpgleref/P2196.rpgleinc'

dcl-ds theTable extname('T1727') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1727 LIMIT 1;

theCharVar = 'Hello from P2519';
dsply theCharVar;
P1155();
P1246();
P2196();
return;