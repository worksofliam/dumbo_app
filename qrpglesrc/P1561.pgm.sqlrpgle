**free

ctl-opt dftactgrp(*no);

dcl-pi P1561;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P175.rpgleinc'
/copy 'qrpgleref/P1332.rpgleinc'
/copy 'qrpgleref/P1118.rpgleinc'

dcl-ds theTable extname('T487') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T487 LIMIT 1;

theCharVar = 'Hello from P1561';
dsply theCharVar;
P175();
P1332();
P1118();
return;