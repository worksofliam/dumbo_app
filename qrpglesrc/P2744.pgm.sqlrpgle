**free

ctl-opt dftactgrp(*no);

dcl-pi P2744;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1921.rpgleinc'
/copy 'qrpgleref/P2438.rpgleinc'
/copy 'qrpgleref/P636.rpgleinc'

dcl-ds theTable extname('T394') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T394 LIMIT 1;

theCharVar = 'Hello from P2744';
dsply theCharVar;
P1921();
P2438();
P636();
return;