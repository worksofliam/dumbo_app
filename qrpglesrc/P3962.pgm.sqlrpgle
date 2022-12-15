**free

ctl-opt dftactgrp(*no);

dcl-pi P3962;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2442.rpgleinc'
/copy 'qrpgleref/P2857.rpgleinc'
/copy 'qrpgleref/P364.rpgleinc'

dcl-ds theTable extname('T626') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T626 LIMIT 1;

theCharVar = 'Hello from P3962';
dsply theCharVar;
P2442();
P2857();
P364();
return;