**free

ctl-opt dftactgrp(*no);

dcl-pi P2287;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1692.rpgleinc'
/copy 'qrpgleref/P1914.rpgleinc'
/copy 'qrpgleref/P1443.rpgleinc'

dcl-ds theTable extname('T1761') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1761 LIMIT 1;

theCharVar = 'Hello from P2287';
dsply theCharVar;
P1692();
P1914();
P1443();
return;