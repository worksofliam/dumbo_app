**free

ctl-opt dftactgrp(*no);

dcl-pi P4680;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1715.rpgleinc'
/copy 'qrpgleref/P3090.rpgleinc'
/copy 'qrpgleref/P4179.rpgleinc'

dcl-ds theTable extname('T329') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T329 LIMIT 1;

theCharVar = 'Hello from P4680';
dsply theCharVar;
P1715();
P3090();
P4179();
return;