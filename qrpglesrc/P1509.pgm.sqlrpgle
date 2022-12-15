**free

ctl-opt dftactgrp(*no);

dcl-pi P1509;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P471.rpgleinc'
/copy 'qrpgleref/P694.rpgleinc'
/copy 'qrpgleref/P1352.rpgleinc'

dcl-ds theTable extname('T1200') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1200 LIMIT 1;

theCharVar = 'Hello from P1509';
dsply theCharVar;
P471();
P694();
P1352();
return;