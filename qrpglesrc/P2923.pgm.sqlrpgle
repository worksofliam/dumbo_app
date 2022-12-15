**free

ctl-opt dftactgrp(*no);

dcl-pi P2923;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1490.rpgleinc'
/copy 'qrpgleref/P1700.rpgleinc'
/copy 'qrpgleref/P294.rpgleinc'

dcl-ds theTable extname('T698') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T698 LIMIT 1;

theCharVar = 'Hello from P2923';
dsply theCharVar;
P1490();
P1700();
P294();
return;