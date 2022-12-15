**free

ctl-opt dftactgrp(*no);

dcl-pi P3191;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P499.rpgleinc'
/copy 'qrpgleref/P2851.rpgleinc'
/copy 'qrpgleref/P1370.rpgleinc'

dcl-ds theTable extname('T1132') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1132 LIMIT 1;

theCharVar = 'Hello from P3191';
dsply theCharVar;
P499();
P2851();
P1370();
return;