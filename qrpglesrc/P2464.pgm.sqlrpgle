**free

ctl-opt dftactgrp(*no);

dcl-pi P2464;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1692.rpgleinc'
/copy 'qrpgleref/P1799.rpgleinc'
/copy 'qrpgleref/P240.rpgleinc'

dcl-ds theTable extname('T767') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T767 LIMIT 1;

theCharVar = 'Hello from P2464';
dsply theCharVar;
P1692();
P1799();
P240();
return;