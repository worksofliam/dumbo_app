**free

ctl-opt dftactgrp(*no);

dcl-pi P3561;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P738.rpgleinc'
/copy 'qrpgleref/P318.rpgleinc'
/copy 'qrpgleref/P1127.rpgleinc'

dcl-ds theTable extname('T1448') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1448 LIMIT 1;

theCharVar = 'Hello from P3561';
dsply theCharVar;
P738();
P318();
P1127();
return;