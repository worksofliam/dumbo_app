**free

ctl-opt dftactgrp(*no);

dcl-pi P3271;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P329.rpgleinc'
/copy 'qrpgleref/P2120.rpgleinc'
/copy 'qrpgleref/P1325.rpgleinc'

dcl-ds theTable extname('T1') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1 LIMIT 1;

theCharVar = 'Hello from P3271';
dsply theCharVar;
P329();
P2120();
P1325();
return;