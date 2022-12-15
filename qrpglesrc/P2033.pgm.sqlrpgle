**free

ctl-opt dftactgrp(*no);

dcl-pi P2033;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2026.rpgleinc'
/copy 'qrpgleref/P87.rpgleinc'
/copy 'qrpgleref/P560.rpgleinc'

dcl-ds theTable extname('T225') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T225 LIMIT 1;

theCharVar = 'Hello from P2033';
dsply theCharVar;
P2026();
P87();
P560();
return;