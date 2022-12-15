**free

ctl-opt dftactgrp(*no);

dcl-pi P2773;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1409.rpgleinc'
/copy 'qrpgleref/P2421.rpgleinc'
/copy 'qrpgleref/P2410.rpgleinc'

dcl-ds theTable extname('T1344') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1344 LIMIT 1;

theCharVar = 'Hello from P2773';
dsply theCharVar;
P1409();
P2421();
P2410();
return;