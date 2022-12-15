**free

ctl-opt dftactgrp(*no);

dcl-pi P1689;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1231.rpgleinc'
/copy 'qrpgleref/P763.rpgleinc'
/copy 'qrpgleref/P545.rpgleinc'

dcl-ds theTable extname('T857') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T857 LIMIT 1;

theCharVar = 'Hello from P1689';
dsply theCharVar;
P1231();
P763();
P545();
return;