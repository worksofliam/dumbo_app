**free

ctl-opt dftactgrp(*no);

dcl-pi P2477;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2260.rpgleinc'
/copy 'qrpgleref/P1252.rpgleinc'
/copy 'qrpgleref/P427.rpgleinc'

dcl-ds theTable extname('T12') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T12 LIMIT 1;

theCharVar = 'Hello from P2477';
dsply theCharVar;
P2260();
P1252();
P427();
return;