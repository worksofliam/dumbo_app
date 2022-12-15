**free

ctl-opt dftactgrp(*no);

dcl-pi P2623;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1442.rpgleinc'
/copy 'qrpgleref/P845.rpgleinc'
/copy 'qrpgleref/P904.rpgleinc'

dcl-ds theTable extname('T62') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T62 LIMIT 1;

theCharVar = 'Hello from P2623';
dsply theCharVar;
P1442();
P845();
P904();
return;