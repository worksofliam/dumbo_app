**free

ctl-opt dftactgrp(*no);

dcl-pi P4799;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3011.rpgleinc'
/copy 'qrpgleref/P2894.rpgleinc'
/copy 'qrpgleref/P3877.rpgleinc'

dcl-ds theTable extname('T445') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T445 LIMIT 1;

theCharVar = 'Hello from P4799';
dsply theCharVar;
P3011();
P2894();
P3877();
return;