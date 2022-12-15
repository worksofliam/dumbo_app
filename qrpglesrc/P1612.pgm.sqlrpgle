**free

ctl-opt dftactgrp(*no);

dcl-pi P1612;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P389.rpgleinc'
/copy 'qrpgleref/P52.rpgleinc'
/copy 'qrpgleref/P1409.rpgleinc'

dcl-ds theTable extname('T215') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T215 LIMIT 1;

theCharVar = 'Hello from P1612';
dsply theCharVar;
P389();
P52();
P1409();
return;