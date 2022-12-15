**free

ctl-opt dftactgrp(*no);

dcl-pi P3969;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1167.rpgleinc'
/copy 'qrpgleref/P1699.rpgleinc'
/copy 'qrpgleref/P3880.rpgleinc'

dcl-ds theTable extname('T320') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T320 LIMIT 1;

theCharVar = 'Hello from P3969';
dsply theCharVar;
P1167();
P1699();
P3880();
return;