**free

ctl-opt dftactgrp(*no);

dcl-pi P3397;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2991.rpgleinc'
/copy 'qrpgleref/P3182.rpgleinc'
/copy 'qrpgleref/P1343.rpgleinc'

dcl-ds theTable extname('T200') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T200 LIMIT 1;

theCharVar = 'Hello from P3397';
dsply theCharVar;
P2991();
P3182();
P1343();
return;