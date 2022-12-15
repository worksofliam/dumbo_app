**free

ctl-opt dftactgrp(*no);

dcl-pi P1387;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1283.rpgleinc'
/copy 'qrpgleref/P618.rpgleinc'
/copy 'qrpgleref/P244.rpgleinc'

dcl-ds theTable extname('T244') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T244 LIMIT 1;

theCharVar = 'Hello from P1387';
dsply theCharVar;
P1283();
P618();
P244();
return;