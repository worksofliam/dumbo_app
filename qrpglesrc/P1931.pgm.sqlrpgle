**free

ctl-opt dftactgrp(*no);

dcl-pi P1931;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P586.rpgleinc'
/copy 'qrpgleref/P1182.rpgleinc'
/copy 'qrpgleref/P1206.rpgleinc'

dcl-ds theTable extname('T776') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T776 LIMIT 1;

theCharVar = 'Hello from P1931';
dsply theCharVar;
P586();
P1182();
P1206();
return;