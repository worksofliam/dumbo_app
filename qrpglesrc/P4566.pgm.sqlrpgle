**free

ctl-opt dftactgrp(*no);

dcl-pi P4566;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3583.rpgleinc'
/copy 'qrpgleref/P626.rpgleinc'
/copy 'qrpgleref/P3191.rpgleinc'

dcl-ds theTable extname('T366') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T366 LIMIT 1;

theCharVar = 'Hello from P4566';
dsply theCharVar;
P3583();
P626();
P3191();
return;