**free

ctl-opt dftactgrp(*no);

dcl-pi P4510;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3276.rpgleinc'
/copy 'qrpgleref/P1342.rpgleinc'
/copy 'qrpgleref/P2812.rpgleinc'

dcl-ds theTable extname('T196') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T196 LIMIT 1;

theCharVar = 'Hello from P4510';
dsply theCharVar;
P3276();
P1342();
P2812();
return;