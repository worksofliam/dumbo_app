**free

ctl-opt dftactgrp(*no);

dcl-pi P1927;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1260.rpgleinc'
/copy 'qrpgleref/P496.rpgleinc'
/copy 'qrpgleref/P405.rpgleinc'

dcl-ds theTable extname('T66') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T66 LIMIT 1;

theCharVar = 'Hello from P1927';
dsply theCharVar;
P1260();
P496();
P405();
return;