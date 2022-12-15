**free

ctl-opt dftactgrp(*no);

dcl-pi P3442;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2254.rpgleinc'
/copy 'qrpgleref/P963.rpgleinc'
/copy 'qrpgleref/P1348.rpgleinc'

dcl-ds theTable extname('T1125') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1125 LIMIT 1;

theCharVar = 'Hello from P3442';
dsply theCharVar;
P2254();
P963();
P1348();
return;