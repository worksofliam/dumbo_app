**free

ctl-opt dftactgrp(*no);

dcl-pi P235;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P217.rpgleinc'
/copy 'qrpgleref/P214.rpgleinc'
/copy 'qrpgleref/P137.rpgleinc'

dcl-ds theTable extname('T374') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T374 LIMIT 1;

theCharVar = 'Hello from P235';
dsply theCharVar;
P217();
P214();
P137();
return;