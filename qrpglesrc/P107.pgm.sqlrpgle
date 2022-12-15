**free

ctl-opt dftactgrp(*no);

dcl-pi P107;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P35.rpgleinc'
/copy 'qrpgleref/P99.rpgleinc'
/copy 'qrpgleref/P75.rpgleinc'

dcl-ds theTable extname('T1066') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1066 LIMIT 1;

theCharVar = 'Hello from P107';
dsply theCharVar;
P35();
P99();
P75();
return;