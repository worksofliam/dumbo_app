**free

ctl-opt dftactgrp(*no);

dcl-pi P1846;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P471.rpgleinc'
/copy 'qrpgleref/P1108.rpgleinc'
/copy 'qrpgleref/P1515.rpgleinc'

dcl-ds theTable extname('T1862') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1862 LIMIT 1;

theCharVar = 'Hello from P1846';
dsply theCharVar;
P471();
P1108();
P1515();
return;