**free

ctl-opt dftactgrp(*no);

dcl-pi P5140;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P677.rpgleinc'
/copy 'qrpgleref/P1439.rpgleinc'
/copy 'qrpgleref/P4551.rpgleinc'

dcl-ds theTable extname('T1396') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1396 LIMIT 1;

theCharVar = 'Hello from P5140';
dsply theCharVar;
P677();
P1439();
P4551();
return;