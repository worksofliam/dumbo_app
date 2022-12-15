**free

ctl-opt dftactgrp(*no);

dcl-pi P2546;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1384.rpgleinc'
/copy 'qrpgleref/P2254.rpgleinc'
/copy 'qrpgleref/P114.rpgleinc'

dcl-ds theTable extname('T853') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T853 LIMIT 1;

theCharVar = 'Hello from P2546';
dsply theCharVar;
P1384();
P2254();
P114();
return;