**free

ctl-opt dftactgrp(*no);

dcl-pi P3149;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2591.rpgleinc'
/copy 'qrpgleref/P2251.rpgleinc'
/copy 'qrpgleref/P1390.rpgleinc'

dcl-ds theTable extname('T427') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T427 LIMIT 1;

theCharVar = 'Hello from P3149';
dsply theCharVar;
P2591();
P2251();
P1390();
return;