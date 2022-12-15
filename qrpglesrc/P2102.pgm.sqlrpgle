**free

ctl-opt dftactgrp(*no);

dcl-pi P2102;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P179.rpgleinc'
/copy 'qrpgleref/P1101.rpgleinc'
/copy 'qrpgleref/P1640.rpgleinc'

dcl-ds theTable extname('T891') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T891 LIMIT 1;

theCharVar = 'Hello from P2102';
dsply theCharVar;
P179();
P1101();
P1640();
return;