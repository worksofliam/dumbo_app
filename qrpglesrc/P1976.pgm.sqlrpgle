**free

ctl-opt dftactgrp(*no);

dcl-pi P1976;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1657.rpgleinc'
/copy 'qrpgleref/P137.rpgleinc'
/copy 'qrpgleref/P766.rpgleinc'

dcl-ds theTable extname('T1360') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1360 LIMIT 1;

theCharVar = 'Hello from P1976';
dsply theCharVar;
P1657();
P137();
P766();
return;