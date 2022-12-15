**free

ctl-opt dftactgrp(*no);

dcl-pi P3825;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P441.rpgleinc'
/copy 'qrpgleref/P3545.rpgleinc'
/copy 'qrpgleref/P2130.rpgleinc'

dcl-ds theTable extname('T1767') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1767 LIMIT 1;

theCharVar = 'Hello from P3825';
dsply theCharVar;
P441();
P3545();
P2130();
return;