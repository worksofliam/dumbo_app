**free

ctl-opt dftactgrp(*no);

dcl-pi P2701;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2576.rpgleinc'
/copy 'qrpgleref/P2000.rpgleinc'
/copy 'qrpgleref/P2084.rpgleinc'

dcl-ds theTable extname('T519') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T519 LIMIT 1;

theCharVar = 'Hello from P2701';
dsply theCharVar;
P2576();
P2000();
P2084();
return;