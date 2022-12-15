**free

ctl-opt dftactgrp(*no);

dcl-pi P4352;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P796.rpgleinc'
/copy 'qrpgleref/P2925.rpgleinc'
/copy 'qrpgleref/P3078.rpgleinc'

dcl-ds theTable extname('T204') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T204 LIMIT 1;

theCharVar = 'Hello from P4352';
dsply theCharVar;
P796();
P2925();
P3078();
return;