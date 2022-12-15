**free

ctl-opt dftactgrp(*no);

dcl-pi P3028;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P883.rpgleinc'
/copy 'qrpgleref/P95.rpgleinc'
/copy 'qrpgleref/P2252.rpgleinc'

dcl-ds theTable extname('T556') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T556 LIMIT 1;

theCharVar = 'Hello from P3028';
dsply theCharVar;
P883();
P95();
P2252();
return;