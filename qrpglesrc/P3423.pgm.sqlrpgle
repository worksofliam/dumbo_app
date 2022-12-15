**free

ctl-opt dftactgrp(*no);

dcl-pi P3423;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1468.rpgleinc'
/copy 'qrpgleref/P2981.rpgleinc'
/copy 'qrpgleref/P692.rpgleinc'

dcl-ds theTable extname('T80') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T80 LIMIT 1;

theCharVar = 'Hello from P3423';
dsply theCharVar;
P1468();
P2981();
P692();
return;