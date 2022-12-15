**free

ctl-opt dftactgrp(*no);

dcl-pi P1627;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1592.rpgleinc'
/copy 'qrpgleref/P1434.rpgleinc'
/copy 'qrpgleref/P1596.rpgleinc'

dcl-ds theTable extname('T733') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T733 LIMIT 1;

theCharVar = 'Hello from P1627';
dsply theCharVar;
P1592();
P1434();
P1596();
return;