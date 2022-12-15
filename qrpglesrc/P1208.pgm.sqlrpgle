**free

ctl-opt dftactgrp(*no);

dcl-pi P1208;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P877.rpgleinc'
/copy 'qrpgleref/P994.rpgleinc'
/copy 'qrpgleref/P746.rpgleinc'

dcl-ds theTable extname('T452') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T452 LIMIT 1;

theCharVar = 'Hello from P1208';
dsply theCharVar;
P877();
P994();
P746();
return;