**free

ctl-opt dftactgrp(*no);

dcl-pi P531;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P6.rpgleinc'
/copy 'qrpgleref/P244.rpgleinc'
/copy 'qrpgleref/P366.rpgleinc'

dcl-ds theTable extname('T148') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T148 LIMIT 1;

theCharVar = 'Hello from P531';
dsply theCharVar;
P6();
P244();
P366();
return;