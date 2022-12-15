**free

ctl-opt dftactgrp(*no);

dcl-pi P3309;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1585.rpgleinc'
/copy 'qrpgleref/P256.rpgleinc'
/copy 'qrpgleref/P967.rpgleinc'

dcl-ds theTable extname('T1044') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1044 LIMIT 1;

theCharVar = 'Hello from P3309';
dsply theCharVar;
P1585();
P256();
P967();
return;