**free

ctl-opt dftactgrp(*no);

dcl-pi P5422;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2754.rpgleinc'
/copy 'qrpgleref/P1934.rpgleinc'
/copy 'qrpgleref/P145.rpgleinc'

dcl-ds theTable extname('T477') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T477 LIMIT 1;

theCharVar = 'Hello from P5422';
dsply theCharVar;
P2754();
P1934();
P145();
return;