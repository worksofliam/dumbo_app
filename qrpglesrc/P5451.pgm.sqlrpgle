**free

ctl-opt dftactgrp(*no);

dcl-pi P5451;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2171.rpgleinc'
/copy 'qrpgleref/P259.rpgleinc'
/copy 'qrpgleref/P4610.rpgleinc'

dcl-ds theTable extname('T238') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T238 LIMIT 1;

theCharVar = 'Hello from P5451';
dsply theCharVar;
P2171();
P259();
P4610();
return;