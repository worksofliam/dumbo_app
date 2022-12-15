**free

ctl-opt dftactgrp(*no);

dcl-pi P1470;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P214.rpgleinc'
/copy 'qrpgleref/P344.rpgleinc'
/copy 'qrpgleref/P173.rpgleinc'

dcl-ds theTable extname('T1127') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1127 LIMIT 1;

theCharVar = 'Hello from P1470';
dsply theCharVar;
P214();
P344();
P173();
return;