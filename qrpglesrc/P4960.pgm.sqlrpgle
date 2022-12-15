**free

ctl-opt dftactgrp(*no);

dcl-pi P4960;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4603.rpgleinc'
/copy 'qrpgleref/P1527.rpgleinc'
/copy 'qrpgleref/P4583.rpgleinc'

dcl-ds theTable extname('T1756') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1756 LIMIT 1;

theCharVar = 'Hello from P4960';
dsply theCharVar;
P4603();
P1527();
P4583();
return;