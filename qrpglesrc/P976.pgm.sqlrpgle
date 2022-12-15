**free

ctl-opt dftactgrp(*no);

dcl-pi P976;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P419.rpgleinc'
/copy 'qrpgleref/P683.rpgleinc'
/copy 'qrpgleref/P192.rpgleinc'

dcl-ds theTable extname('T967') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T967 LIMIT 1;

theCharVar = 'Hello from P976';
dsply theCharVar;
P419();
P683();
P192();
return;