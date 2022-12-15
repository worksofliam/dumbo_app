**free

ctl-opt dftactgrp(*no);

dcl-pi P1962;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1341.rpgleinc'
/copy 'qrpgleref/P1677.rpgleinc'
/copy 'qrpgleref/P1753.rpgleinc'

dcl-ds theTable extname('T1109') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1109 LIMIT 1;

theCharVar = 'Hello from P1962';
dsply theCharVar;
P1341();
P1677();
P1753();
return;