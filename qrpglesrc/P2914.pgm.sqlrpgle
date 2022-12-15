**free

ctl-opt dftactgrp(*no);

dcl-pi P2914;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2651.rpgleinc'
/copy 'qrpgleref/P1026.rpgleinc'
/copy 'qrpgleref/P579.rpgleinc'

dcl-ds theTable extname('T790') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T790 LIMIT 1;

theCharVar = 'Hello from P2914';
dsply theCharVar;
P2651();
P1026();
P579();
return;