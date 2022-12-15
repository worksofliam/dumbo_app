**free

ctl-opt dftactgrp(*no);

dcl-pi P3161;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1681.rpgleinc'
/copy 'qrpgleref/P1087.rpgleinc'
/copy 'qrpgleref/P353.rpgleinc'

dcl-ds theTable extname('T1127') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1127 LIMIT 1;

theCharVar = 'Hello from P3161';
dsply theCharVar;
P1681();
P1087();
P353();
return;