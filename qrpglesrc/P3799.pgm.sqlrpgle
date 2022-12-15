**free

ctl-opt dftactgrp(*no);

dcl-pi P3799;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2552.rpgleinc'
/copy 'qrpgleref/P3633.rpgleinc'
/copy 'qrpgleref/P1283.rpgleinc'

dcl-ds theTable extname('T1509') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1509 LIMIT 1;

theCharVar = 'Hello from P3799';
dsply theCharVar;
P2552();
P3633();
P1283();
return;