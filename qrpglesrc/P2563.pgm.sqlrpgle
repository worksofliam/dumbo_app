**free

ctl-opt dftactgrp(*no);

dcl-pi P2563;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2212.rpgleinc'
/copy 'qrpgleref/P1374.rpgleinc'
/copy 'qrpgleref/P1836.rpgleinc'

dcl-ds theTable extname('T1237') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1237 LIMIT 1;

theCharVar = 'Hello from P2563';
dsply theCharVar;
P2212();
P1374();
P1836();
return;