**free

ctl-opt dftactgrp(*no);

dcl-pi P3266;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P353.rpgleinc'
/copy 'qrpgleref/P1325.rpgleinc'
/copy 'qrpgleref/P1750.rpgleinc'

dcl-ds theTable extname('T541') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T541 LIMIT 1;

theCharVar = 'Hello from P3266';
dsply theCharVar;
P353();
P1325();
P1750();
return;