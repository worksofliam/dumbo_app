**free

ctl-opt dftactgrp(*no);

dcl-pi P2662;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P513.rpgleinc'
/copy 'qrpgleref/P6.rpgleinc'
/copy 'qrpgleref/P2254.rpgleinc'

dcl-ds theTable extname('T241') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T241 LIMIT 1;

theCharVar = 'Hello from P2662';
dsply theCharVar;
P513();
P6();
P2254();
return;