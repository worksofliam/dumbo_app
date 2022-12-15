**free

ctl-opt dftactgrp(*no);

dcl-pi P2915;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1006.rpgleinc'
/copy 'qrpgleref/P1910.rpgleinc'
/copy 'qrpgleref/P824.rpgleinc'

dcl-ds theTable extname('T575') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T575 LIMIT 1;

theCharVar = 'Hello from P2915';
dsply theCharVar;
P1006();
P1910();
P824();
return;