**free

ctl-opt dftactgrp(*no);

dcl-pi P2065;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P248.rpgleinc'
/copy 'qrpgleref/P1697.rpgleinc'
/copy 'qrpgleref/P758.rpgleinc'

dcl-ds theTable extname('T1411') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1411 LIMIT 1;

theCharVar = 'Hello from P2065';
dsply theCharVar;
P248();
P1697();
P758();
return;