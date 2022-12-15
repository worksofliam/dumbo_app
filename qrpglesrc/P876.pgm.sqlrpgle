**free

ctl-opt dftactgrp(*no);

dcl-pi P876;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P823.rpgleinc'
/copy 'qrpgleref/P787.rpgleinc'
/copy 'qrpgleref/P30.rpgleinc'

dcl-ds theTable extname('T398') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T398 LIMIT 1;

theCharVar = 'Hello from P876';
dsply theCharVar;
P823();
P787();
P30();
return;