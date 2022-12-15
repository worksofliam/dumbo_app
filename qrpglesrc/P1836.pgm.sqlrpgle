**free

ctl-opt dftactgrp(*no);

dcl-pi P1836;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1495.rpgleinc'
/copy 'qrpgleref/P152.rpgleinc'
/copy 'qrpgleref/P271.rpgleinc'

dcl-ds theTable extname('T1007') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1007 LIMIT 1;

theCharVar = 'Hello from P1836';
dsply theCharVar;
P1495();
P152();
P271();
return;