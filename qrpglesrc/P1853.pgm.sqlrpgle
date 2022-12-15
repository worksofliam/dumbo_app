**free

ctl-opt dftactgrp(*no);

dcl-pi P1853;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P673.rpgleinc'
/copy 'qrpgleref/P1697.rpgleinc'
/copy 'qrpgleref/P1065.rpgleinc'

dcl-ds theTable extname('T1695') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1695 LIMIT 1;

theCharVar = 'Hello from P1853';
dsply theCharVar;
P673();
P1697();
P1065();
return;