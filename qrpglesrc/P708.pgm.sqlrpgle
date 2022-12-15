**free

ctl-opt dftactgrp(*no);

dcl-pi P708;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P479.rpgleinc'
/copy 'qrpgleref/P663.rpgleinc'
/copy 'qrpgleref/P638.rpgleinc'

dcl-ds theTable extname('T482') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T482 LIMIT 1;

theCharVar = 'Hello from P708';
dsply theCharVar;
P479();
P663();
P638();
return;