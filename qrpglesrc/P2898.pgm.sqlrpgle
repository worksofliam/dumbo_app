**free

ctl-opt dftactgrp(*no);

dcl-pi P2898;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1562.rpgleinc'
/copy 'qrpgleref/P525.rpgleinc'
/copy 'qrpgleref/P2280.rpgleinc'

dcl-ds theTable extname('T263') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T263 LIMIT 1;

theCharVar = 'Hello from P2898';
dsply theCharVar;
P1562();
P525();
P2280();
return;