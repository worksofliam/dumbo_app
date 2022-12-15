**free

ctl-opt dftactgrp(*no);

dcl-pi P4687;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1651.rpgleinc'
/copy 'qrpgleref/P524.rpgleinc'
/copy 'qrpgleref/P2084.rpgleinc'

dcl-ds theTable extname('T777') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T777 LIMIT 1;

theCharVar = 'Hello from P4687';
dsply theCharVar;
P1651();
P524();
P2084();
return;