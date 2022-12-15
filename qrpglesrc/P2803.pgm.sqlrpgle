**free

ctl-opt dftactgrp(*no);

dcl-pi P2803;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1562.rpgleinc'
/copy 'qrpgleref/P2350.rpgleinc'
/copy 'qrpgleref/P1432.rpgleinc'

dcl-ds theTable extname('T762') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T762 LIMIT 1;

theCharVar = 'Hello from P2803';
dsply theCharVar;
P1562();
P2350();
P1432();
return;