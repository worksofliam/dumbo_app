**free

ctl-opt dftactgrp(*no);

dcl-pi P1804;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P670.rpgleinc'
/copy 'qrpgleref/P1573.rpgleinc'
/copy 'qrpgleref/P1651.rpgleinc'

dcl-ds theTable extname('T627') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T627 LIMIT 1;

theCharVar = 'Hello from P1804';
dsply theCharVar;
P670();
P1573();
P1651();
return;