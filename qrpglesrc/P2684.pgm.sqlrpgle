**free

ctl-opt dftactgrp(*no);

dcl-pi P2684;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1929.rpgleinc'
/copy 'qrpgleref/P383.rpgleinc'
/copy 'qrpgleref/P2479.rpgleinc'

dcl-ds theTable extname('T1767') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1767 LIMIT 1;

theCharVar = 'Hello from P2684';
dsply theCharVar;
P1929();
P383();
P2479();
return;