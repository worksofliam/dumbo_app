**free

ctl-opt dftactgrp(*no);

dcl-pi P417;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P366.rpgleinc'
/copy 'qrpgleref/P256.rpgleinc'
/copy 'qrpgleref/P414.rpgleinc'

dcl-ds theTable extname('T8') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T8 LIMIT 1;

theCharVar = 'Hello from P417';
dsply theCharVar;
P366();
P256();
P414();
return;