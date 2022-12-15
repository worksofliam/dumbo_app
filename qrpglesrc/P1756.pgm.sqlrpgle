**free

ctl-opt dftactgrp(*no);

dcl-pi P1756;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1353.rpgleinc'
/copy 'qrpgleref/P1396.rpgleinc'
/copy 'qrpgleref/P1439.rpgleinc'

dcl-ds theTable extname('T1260') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1260 LIMIT 1;

theCharVar = 'Hello from P1756';
dsply theCharVar;
P1353();
P1396();
P1439();
return;