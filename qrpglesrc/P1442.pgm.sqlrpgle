**free

ctl-opt dftactgrp(*no);

dcl-pi P1442;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P798.rpgleinc'
/copy 'qrpgleref/P631.rpgleinc'
/copy 'qrpgleref/P606.rpgleinc'

dcl-ds theTable extname('T1859') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1859 LIMIT 1;

theCharVar = 'Hello from P1442';
dsply theCharVar;
P798();
P631();
P606();
return;