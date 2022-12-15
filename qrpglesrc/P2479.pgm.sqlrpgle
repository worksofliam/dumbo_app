**free

ctl-opt dftactgrp(*no);

dcl-pi P2479;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1902.rpgleinc'
/copy 'qrpgleref/P2175.rpgleinc'
/copy 'qrpgleref/P2165.rpgleinc'

dcl-ds theTable extname('T903') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T903 LIMIT 1;

theCharVar = 'Hello from P2479';
dsply theCharVar;
P1902();
P2175();
P2165();
return;