**free

ctl-opt dftactgrp(*no);

dcl-pi P1417;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P880.rpgleinc'
/copy 'qrpgleref/P763.rpgleinc'
/copy 'qrpgleref/P889.rpgleinc'

dcl-ds theTable extname('T146') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T146 LIMIT 1;

theCharVar = 'Hello from P1417';
dsply theCharVar;
P880();
P763();
P889();
return;