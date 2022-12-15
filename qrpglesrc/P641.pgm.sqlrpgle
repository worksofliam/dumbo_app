**free

ctl-opt dftactgrp(*no);

dcl-pi P641;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P233.rpgleinc'
/copy 'qrpgleref/P441.rpgleinc'
/copy 'qrpgleref/P224.rpgleinc'

dcl-ds theTable extname('T266') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T266 LIMIT 1;

theCharVar = 'Hello from P641';
dsply theCharVar;
P233();
P441();
P224();
return;