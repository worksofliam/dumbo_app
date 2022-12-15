**free

ctl-opt dftactgrp(*no);

dcl-pi P2055;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P946.rpgleinc'
/copy 'qrpgleref/P1745.rpgleinc'
/copy 'qrpgleref/P679.rpgleinc'

dcl-ds theTable extname('T1387') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1387 LIMIT 1;

theCharVar = 'Hello from P2055';
dsply theCharVar;
P946();
P1745();
P679();
return;