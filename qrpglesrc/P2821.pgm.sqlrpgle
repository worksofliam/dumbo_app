**free

ctl-opt dftactgrp(*no);

dcl-pi P2821;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2407.rpgleinc'
/copy 'qrpgleref/P1142.rpgleinc'
/copy 'qrpgleref/P2409.rpgleinc'

dcl-ds theTable extname('T1502') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1502 LIMIT 1;

theCharVar = 'Hello from P2821';
dsply theCharVar;
P2407();
P1142();
P2409();
return;