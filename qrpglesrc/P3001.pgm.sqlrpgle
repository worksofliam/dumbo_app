**free

ctl-opt dftactgrp(*no);

dcl-pi P3001;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P321.rpgleinc'
/copy 'qrpgleref/P794.rpgleinc'
/copy 'qrpgleref/P2265.rpgleinc'

dcl-ds theTable extname('T260') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T260 LIMIT 1;

theCharVar = 'Hello from P3001';
dsply theCharVar;
P321();
P794();
P2265();
return;