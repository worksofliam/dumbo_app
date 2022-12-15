**free

ctl-opt dftactgrp(*no);

dcl-pi P2315;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P589.rpgleinc'
/copy 'qrpgleref/P1035.rpgleinc'
/copy 'qrpgleref/P1551.rpgleinc'

dcl-ds theTable extname('T526') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T526 LIMIT 1;

theCharVar = 'Hello from P2315';
dsply theCharVar;
P589();
P1035();
P1551();
return;