**free

ctl-opt dftactgrp(*no);

dcl-pi P2402;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1912.rpgleinc'
/copy 'qrpgleref/P1579.rpgleinc'
/copy 'qrpgleref/P1628.rpgleinc'

dcl-ds theTable extname('T845') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T845 LIMIT 1;

theCharVar = 'Hello from P2402';
dsply theCharVar;
P1912();
P1579();
P1628();
return;