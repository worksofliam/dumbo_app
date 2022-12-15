**free

ctl-opt dftactgrp(*no);

dcl-pi P3807;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1409.rpgleinc'
/copy 'qrpgleref/P2382.rpgleinc'
/copy 'qrpgleref/P1580.rpgleinc'

dcl-ds theTable extname('T832') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T832 LIMIT 1;

theCharVar = 'Hello from P3807';
dsply theCharVar;
P1409();
P2382();
P1580();
return;