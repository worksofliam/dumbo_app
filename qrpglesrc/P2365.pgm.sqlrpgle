**free

ctl-opt dftactgrp(*no);

dcl-pi P2365;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1799.rpgleinc'
/copy 'qrpgleref/P142.rpgleinc'
/copy 'qrpgleref/P1125.rpgleinc'

dcl-ds theTable extname('T860') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T860 LIMIT 1;

theCharVar = 'Hello from P2365';
dsply theCharVar;
P1799();
P142();
P1125();
return;