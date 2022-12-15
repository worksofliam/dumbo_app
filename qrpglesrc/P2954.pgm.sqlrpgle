**free

ctl-opt dftactgrp(*no);

dcl-pi P2954;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1852.rpgleinc'
/copy 'qrpgleref/P214.rpgleinc'
/copy 'qrpgleref/P2252.rpgleinc'

dcl-ds theTable extname('T896') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T896 LIMIT 1;

theCharVar = 'Hello from P2954';
dsply theCharVar;
P1852();
P214();
P2252();
return;