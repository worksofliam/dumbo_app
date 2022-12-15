**free

ctl-opt dftactgrp(*no);

dcl-pi P2688;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P142.rpgleinc'
/copy 'qrpgleref/P2672.rpgleinc'
/copy 'qrpgleref/P2479.rpgleinc'

dcl-ds theTable extname('T385') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T385 LIMIT 1;

theCharVar = 'Hello from P2688';
dsply theCharVar;
P142();
P2672();
P2479();
return;