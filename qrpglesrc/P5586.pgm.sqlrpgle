**free

ctl-opt dftactgrp(*no);

dcl-pi P5586;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3757.rpgleinc'
/copy 'qrpgleref/P2265.rpgleinc'
/copy 'qrpgleref/P5545.rpgleinc'

dcl-ds theTable extname('T1237') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1237 LIMIT 1;

theCharVar = 'Hello from P5586';
dsply theCharVar;
P3757();
P2265();
P5545();
return;