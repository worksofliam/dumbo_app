**free

ctl-opt dftactgrp(*no);

dcl-pi P2231;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1906.rpgleinc'
/copy 'qrpgleref/P154.rpgleinc'
/copy 'qrpgleref/P1695.rpgleinc'

dcl-ds theTable extname('T1542') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1542 LIMIT 1;

theCharVar = 'Hello from P2231';
dsply theCharVar;
P1906();
P154();
P1695();
return;