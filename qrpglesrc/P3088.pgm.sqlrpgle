**free

ctl-opt dftactgrp(*no);

dcl-pi P3088;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P723.rpgleinc'
/copy 'qrpgleref/P2228.rpgleinc'
/copy 'qrpgleref/P1877.rpgleinc'

dcl-ds theTable extname('T418') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T418 LIMIT 1;

theCharVar = 'Hello from P3088';
dsply theCharVar;
P723();
P2228();
P1877();
return;