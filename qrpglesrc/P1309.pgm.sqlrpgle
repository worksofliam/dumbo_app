**free

ctl-opt dftactgrp(*no);

dcl-pi P1309;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P513.rpgleinc'
/copy 'qrpgleref/P1115.rpgleinc'
/copy 'qrpgleref/P1211.rpgleinc'

dcl-ds theTable extname('T275') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T275 LIMIT 1;

theCharVar = 'Hello from P1309';
dsply theCharVar;
P513();
P1115();
P1211();
return;