**free

ctl-opt dftactgrp(*no);

dcl-pi P50;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P9.rpgleinc'
/copy 'qrpgleref/P32.rpgleinc'
/copy 'qrpgleref/P41.rpgleinc'

dcl-ds theTable extname('T972') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T972 LIMIT 1;

theCharVar = 'Hello from P50';
dsply theCharVar;
P9();
P32();
P41();
return;