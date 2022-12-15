**free

ctl-opt dftactgrp(*no);

dcl-pi P1929;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P783.rpgleinc'
/copy 'qrpgleref/P1089.rpgleinc'
/copy 'qrpgleref/P1250.rpgleinc'

dcl-ds theTable extname('T545') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T545 LIMIT 1;

theCharVar = 'Hello from P1929';
dsply theCharVar;
P783();
P1089();
P1250();
return;