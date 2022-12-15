**free

ctl-opt dftactgrp(*no);

dcl-pi P457;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P309.rpgleinc'
/copy 'qrpgleref/P135.rpgleinc'
/copy 'qrpgleref/P441.rpgleinc'

dcl-ds theTable extname('T1093') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1093 LIMIT 1;

theCharVar = 'Hello from P457';
dsply theCharVar;
P309();
P135();
P441();
return;