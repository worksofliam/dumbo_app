**free

ctl-opt dftactgrp(*no);

dcl-pi P3488;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2137.rpgleinc'
/copy 'qrpgleref/P1039.rpgleinc'
/copy 'qrpgleref/P774.rpgleinc'

dcl-ds theTable extname('T1691') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1691 LIMIT 1;

theCharVar = 'Hello from P3488';
dsply theCharVar;
P2137();
P1039();
P774();
return;