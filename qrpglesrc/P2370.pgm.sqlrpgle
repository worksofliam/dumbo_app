**free

ctl-opt dftactgrp(*no);

dcl-pi P2370;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1792.rpgleinc'
/copy 'qrpgleref/P970.rpgleinc'
/copy 'qrpgleref/P136.rpgleinc'

dcl-ds theTable extname('T180') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T180 LIMIT 1;

theCharVar = 'Hello from P2370';
dsply theCharVar;
P1792();
P970();
P136();
return;