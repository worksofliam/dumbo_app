**free

ctl-opt dftactgrp(*no);

dcl-pi P2699;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P664.rpgleinc'
/copy 'qrpgleref/P470.rpgleinc'
/copy 'qrpgleref/P419.rpgleinc'

dcl-ds theTable extname('T776') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T776 LIMIT 1;

theCharVar = 'Hello from P2699';
dsply theCharVar;
P664();
P470();
P419();
return;