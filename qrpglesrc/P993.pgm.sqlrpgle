**free

ctl-opt dftactgrp(*no);

dcl-pi P993;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P87.rpgleinc'
/copy 'qrpgleref/P663.rpgleinc'
/copy 'qrpgleref/P105.rpgleinc'

dcl-ds theTable extname('T398') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T398 LIMIT 1;

theCharVar = 'Hello from P993';
dsply theCharVar;
P87();
P663();
P105();
return;