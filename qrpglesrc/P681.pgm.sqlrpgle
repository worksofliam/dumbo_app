**free

ctl-opt dftactgrp(*no);

dcl-pi P681;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P32.rpgleinc'
/copy 'qrpgleref/P297.rpgleinc'
/copy 'qrpgleref/P87.rpgleinc'

dcl-ds theTable extname('T776') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T776 LIMIT 1;

theCharVar = 'Hello from P681';
dsply theCharVar;
P32();
P297();
P87();
return;