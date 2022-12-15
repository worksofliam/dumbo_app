**free

ctl-opt dftactgrp(*no);

dcl-pi P2349;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P99.rpgleinc'
/copy 'qrpgleref/P2278.rpgleinc'
/copy 'qrpgleref/P2058.rpgleinc'

dcl-ds theTable extname('T164') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T164 LIMIT 1;

theCharVar = 'Hello from P2349';
dsply theCharVar;
P99();
P2278();
P2058();
return;