**free

ctl-opt dftactgrp(*no);

dcl-pi P1768;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1409.rpgleinc'
/copy 'qrpgleref/P1641.rpgleinc'
/copy 'qrpgleref/P645.rpgleinc'

dcl-ds theTable extname('T962') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T962 LIMIT 1;

theCharVar = 'Hello from P1768';
dsply theCharVar;
P1409();
P1641();
P645();
return;