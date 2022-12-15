**free

ctl-opt dftactgrp(*no);

dcl-pi P3287;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2812.rpgleinc'
/copy 'qrpgleref/P592.rpgleinc'
/copy 'qrpgleref/P296.rpgleinc'

dcl-ds theTable extname('T1062') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1062 LIMIT 1;

theCharVar = 'Hello from P3287';
dsply theCharVar;
P2812();
P592();
P296();
return;