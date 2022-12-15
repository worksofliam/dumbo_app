**free

ctl-opt dftactgrp(*no);

dcl-pi P3323;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1838.rpgleinc'
/copy 'qrpgleref/P1237.rpgleinc'
/copy 'qrpgleref/P2241.rpgleinc'

dcl-ds theTable extname('T1053') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1053 LIMIT 1;

theCharVar = 'Hello from P3323';
dsply theCharVar;
P1838();
P1237();
P2241();
return;