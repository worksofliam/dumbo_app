**free

ctl-opt dftactgrp(*no);

dcl-pi P1323;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P350.rpgleinc'
/copy 'qrpgleref/P1277.rpgleinc'
/copy 'qrpgleref/P817.rpgleinc'

dcl-ds theTable extname('T725') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T725 LIMIT 1;

theCharVar = 'Hello from P1323';
dsply theCharVar;
P350();
P1277();
P817();
return;