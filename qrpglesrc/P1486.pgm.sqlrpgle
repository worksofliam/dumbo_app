**free

ctl-opt dftactgrp(*no);

dcl-pi P1486;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P261.rpgleinc'
/copy 'qrpgleref/P1127.rpgleinc'
/copy 'qrpgleref/P1468.rpgleinc'

dcl-ds theTable extname('T1285') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1285 LIMIT 1;

theCharVar = 'Hello from P1486';
dsply theCharVar;
P261();
P1127();
P1468();
return;