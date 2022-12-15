**free

ctl-opt dftactgrp(*no);

dcl-pi P2213;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1221.rpgleinc'
/copy 'qrpgleref/P1434.rpgleinc'
/copy 'qrpgleref/P1078.rpgleinc'

dcl-ds theTable extname('T1393') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1393 LIMIT 1;

theCharVar = 'Hello from P2213';
dsply theCharVar;
P1221();
P1434();
P1078();
return;