**free

ctl-opt dftactgrp(*no);

dcl-pi P256;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P192.rpgleinc'
/copy 'qrpgleref/P125.rpgleinc'
/copy 'qrpgleref/P212.rpgleinc'

dcl-ds theTable extname('T1439') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1439 LIMIT 1;

theCharVar = 'Hello from P256';
dsply theCharVar;
P192();
P125();
P212();
return;