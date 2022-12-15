**free

ctl-opt dftactgrp(*no);

dcl-pi P1309;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1145.rpgleinc'
/copy 'qrpgleref/P646.rpgleinc'
/copy 'qrpgleref/P606.rpgleinc'

dcl-ds theTable extname('T1713') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1713 LIMIT 1;

theCharVar = 'Hello from P1309';
dsply theCharVar;
P1145();
P646();
P606();
return;