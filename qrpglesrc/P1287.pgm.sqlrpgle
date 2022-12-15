**free

ctl-opt dftactgrp(*no);

dcl-pi P1287;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P361.rpgleinc'
/copy 'qrpgleref/P763.rpgleinc'
/copy 'qrpgleref/P432.rpgleinc'

dcl-ds theTable extname('T1683') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1683 LIMIT 1;

theCharVar = 'Hello from P1287';
dsply theCharVar;
P361();
P763();
P432();
return;