**free

ctl-opt dftactgrp(*no);

dcl-pi P1574;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P8.rpgleinc'
/copy 'qrpgleref/P1290.rpgleinc'
/copy 'qrpgleref/P1387.rpgleinc'

dcl-ds theTable extname('T1419') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1419 LIMIT 1;

theCharVar = 'Hello from P1574';
dsply theCharVar;
P8();
P1290();
P1387();
return;