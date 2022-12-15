**free

ctl-opt dftactgrp(*no);

dcl-pi P923;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P479.rpgleinc'
/copy 'qrpgleref/P265.rpgleinc'
/copy 'qrpgleref/P236.rpgleinc'

dcl-ds theTable extname('T1613') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1613 LIMIT 1;

theCharVar = 'Hello from P923';
dsply theCharVar;
P479();
P265();
P236();
return;