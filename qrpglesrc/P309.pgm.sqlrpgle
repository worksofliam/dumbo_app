**free

ctl-opt dftactgrp(*no);

dcl-pi P309;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P108.rpgleinc'
/copy 'qrpgleref/P262.rpgleinc'
/copy 'qrpgleref/P247.rpgleinc'

dcl-ds theTable extname('T557') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T557 LIMIT 1;

theCharVar = 'Hello from P309';
dsply theCharVar;
P108();
P262();
P247();
return;