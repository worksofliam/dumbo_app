**free

ctl-opt dftactgrp(*no);

dcl-pi P1529;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P977.rpgleinc'
/copy 'qrpgleref/P1499.rpgleinc'
/copy 'qrpgleref/P18.rpgleinc'

dcl-ds theTable extname('T351') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T351 LIMIT 1;

theCharVar = 'Hello from P1529';
dsply theCharVar;
P977();
P1499();
P18();
return;