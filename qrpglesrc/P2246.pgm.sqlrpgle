**free

ctl-opt dftactgrp(*no);

dcl-pi P2246;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P544.rpgleinc'
/copy 'qrpgleref/P1692.rpgleinc'
/copy 'qrpgleref/P2156.rpgleinc'

dcl-ds theTable extname('T1168') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1168 LIMIT 1;

theCharVar = 'Hello from P2246';
dsply theCharVar;
P544();
P1692();
P2156();
return;