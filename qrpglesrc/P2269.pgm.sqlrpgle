**free

ctl-opt dftactgrp(*no);

dcl-pi P2269;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1973.rpgleinc'
/copy 'qrpgleref/P136.rpgleinc'
/copy 'qrpgleref/P1268.rpgleinc'

dcl-ds theTable extname('T576') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T576 LIMIT 1;

theCharVar = 'Hello from P2269';
dsply theCharVar;
P1973();
P136();
P1268();
return;