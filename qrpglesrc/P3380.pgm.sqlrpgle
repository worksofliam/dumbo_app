**free

ctl-opt dftactgrp(*no);

dcl-pi P3380;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2075.rpgleinc'
/copy 'qrpgleref/P1339.rpgleinc'
/copy 'qrpgleref/P3002.rpgleinc'

dcl-ds theTable extname('T1625') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1625 LIMIT 1;

theCharVar = 'Hello from P3380';
dsply theCharVar;
P2075();
P1339();
P3002();
return;