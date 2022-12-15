**free

ctl-opt dftactgrp(*no);

dcl-pi P3416;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3370.rpgleinc'
/copy 'qrpgleref/P657.rpgleinc'
/copy 'qrpgleref/P1041.rpgleinc'

dcl-ds theTable extname('T878') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T878 LIMIT 1;

theCharVar = 'Hello from P3416';
dsply theCharVar;
P3370();
P657();
P1041();
return;