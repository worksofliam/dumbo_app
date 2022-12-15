**free

ctl-opt dftactgrp(*no);

dcl-pi P3077;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2999.rpgleinc'
/copy 'qrpgleref/P2044.rpgleinc'
/copy 'qrpgleref/P2776.rpgleinc'

dcl-ds theTable extname('T259') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T259 LIMIT 1;

theCharVar = 'Hello from P3077';
dsply theCharVar;
P2999();
P2044();
P2776();
return;