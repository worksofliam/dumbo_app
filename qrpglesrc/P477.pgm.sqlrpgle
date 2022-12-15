**free

ctl-opt dftactgrp(*no);

dcl-pi P477;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P435.rpgleinc'
/copy 'qrpgleref/P106.rpgleinc'
/copy 'qrpgleref/P260.rpgleinc'

dcl-ds theTable extname('T258') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T258 LIMIT 1;

theCharVar = 'Hello from P477';
dsply theCharVar;
P435();
P106();
P260();
return;