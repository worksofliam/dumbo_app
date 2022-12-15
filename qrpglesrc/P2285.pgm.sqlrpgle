**free

ctl-opt dftactgrp(*no);

dcl-pi P2285;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1818.rpgleinc'
/copy 'qrpgleref/P419.rpgleinc'
/copy 'qrpgleref/P1279.rpgleinc'

dcl-ds theTable extname('T416') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T416 LIMIT 1;

theCharVar = 'Hello from P2285';
dsply theCharVar;
P1818();
P419();
P1279();
return;