**free

ctl-opt dftactgrp(*no);

dcl-pi P2472;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2394.rpgleinc'
/copy 'qrpgleref/P2440.rpgleinc'
/copy 'qrpgleref/P1824.rpgleinc'

dcl-ds theTable extname('T896') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T896 LIMIT 1;

theCharVar = 'Hello from P2472';
dsply theCharVar;
P2394();
P2440();
P1824();
return;