**free

ctl-opt dftactgrp(*no);

dcl-pi P795;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P398.rpgleinc'
/copy 'qrpgleref/P183.rpgleinc'
/copy 'qrpgleref/P560.rpgleinc'

dcl-ds theTable extname('T63') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T63 LIMIT 1;

theCharVar = 'Hello from P795';
dsply theCharVar;
P398();
P183();
P560();
return;