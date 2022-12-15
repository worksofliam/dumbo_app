**free

ctl-opt dftactgrp(*no);

dcl-pi P3106;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P262.rpgleinc'
/copy 'qrpgleref/P1502.rpgleinc'
/copy 'qrpgleref/P1499.rpgleinc'

dcl-ds theTable extname('T248') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T248 LIMIT 1;

theCharVar = 'Hello from P3106';
dsply theCharVar;
P262();
P1502();
P1499();
return;