**free

ctl-opt dftactgrp(*no);

dcl-pi P3397;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1287.rpgleinc'
/copy 'qrpgleref/P1429.rpgleinc'
/copy 'qrpgleref/P488.rpgleinc'

dcl-ds theTable extname('T1197') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1197 LIMIT 1;

theCharVar = 'Hello from P3397';
dsply theCharVar;
P1287();
P1429();
P488();
return;