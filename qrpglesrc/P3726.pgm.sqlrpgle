**free

ctl-opt dftactgrp(*no);

dcl-pi P3726;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2983.rpgleinc'
/copy 'qrpgleref/P2581.rpgleinc'
/copy 'qrpgleref/P83.rpgleinc'

dcl-ds theTable extname('T237') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T237 LIMIT 1;

theCharVar = 'Hello from P3726';
dsply theCharVar;
P2983();
P2581();
P83();
return;