**free

ctl-opt dftactgrp(*no);

dcl-pi P622;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P106.rpgleinc'
/copy 'qrpgleref/P479.rpgleinc'
/copy 'qrpgleref/P505.rpgleinc'

dcl-ds theTable extname('T30') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T30 LIMIT 1;

theCharVar = 'Hello from P622';
dsply theCharVar;
P106();
P479();
P505();
return;