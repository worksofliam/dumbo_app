**free

ctl-opt dftactgrp(*no);

dcl-pi P3155;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1895.rpgleinc'
/copy 'qrpgleref/P2611.rpgleinc'
/copy 'qrpgleref/P6.rpgleinc'

dcl-ds theTable extname('T411') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T411 LIMIT 1;

theCharVar = 'Hello from P3155';
dsply theCharVar;
P1895();
P2611();
P6();
return;