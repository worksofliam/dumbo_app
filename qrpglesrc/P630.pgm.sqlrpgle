**free

ctl-opt dftactgrp(*no);

dcl-pi P630;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P479.rpgleinc'
/copy 'qrpgleref/P131.rpgleinc'
/copy 'qrpgleref/P140.rpgleinc'

dcl-ds theTable extname('T66') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T66 LIMIT 1;

theCharVar = 'Hello from P630';
dsply theCharVar;
P479();
P131();
P140();
return;