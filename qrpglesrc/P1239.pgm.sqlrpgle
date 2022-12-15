**free

ctl-opt dftactgrp(*no);

dcl-pi P1239;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P441.rpgleinc'
/copy 'qrpgleref/P143.rpgleinc'
/copy 'qrpgleref/P396.rpgleinc'

dcl-ds theTable extname('T253') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T253 LIMIT 1;

theCharVar = 'Hello from P1239';
dsply theCharVar;
P441();
P143();
P396();
return;