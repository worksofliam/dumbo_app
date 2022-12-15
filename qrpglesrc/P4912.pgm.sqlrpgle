**free

ctl-opt dftactgrp(*no);

dcl-pi P4912;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2501.rpgleinc'
/copy 'qrpgleref/P1277.rpgleinc'
/copy 'qrpgleref/P1411.rpgleinc'

dcl-ds theTable extname('T1717') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1717 LIMIT 1;

theCharVar = 'Hello from P4912';
dsply theCharVar;
P2501();
P1277();
P1411();
return;