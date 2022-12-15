**free

ctl-opt dftactgrp(*no);

dcl-pi P2095;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P333.rpgleinc'
/copy 'qrpgleref/P1169.rpgleinc'
/copy 'qrpgleref/P653.rpgleinc'

dcl-ds theTable extname('T1465') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1465 LIMIT 1;

theCharVar = 'Hello from P2095';
dsply theCharVar;
P333();
P1169();
P653();
return;