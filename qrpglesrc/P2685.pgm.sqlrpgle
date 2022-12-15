**free

ctl-opt dftactgrp(*no);

dcl-pi P2685;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1412.rpgleinc'
/copy 'qrpgleref/P1499.rpgleinc'
/copy 'qrpgleref/P226.rpgleinc'

dcl-ds theTable extname('T870') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T870 LIMIT 1;

theCharVar = 'Hello from P2685';
dsply theCharVar;
P1412();
P1499();
P226();
return;