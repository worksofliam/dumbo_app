**free

ctl-opt dftactgrp(*no);

dcl-pi P2550;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P904.rpgleinc'
/copy 'qrpgleref/P2394.rpgleinc'
/copy 'qrpgleref/P2474.rpgleinc'

dcl-ds theTable extname('T1858') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1858 LIMIT 1;

theCharVar = 'Hello from P2550';
dsply theCharVar;
P904();
P2394();
P2474();
return;