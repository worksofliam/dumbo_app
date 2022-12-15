**free

ctl-opt dftactgrp(*no);

dcl-pi P2253;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2025.rpgleinc'
/copy 'qrpgleref/P142.rpgleinc'
/copy 'qrpgleref/P1651.rpgleinc'

dcl-ds theTable extname('T468') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T468 LIMIT 1;

theCharVar = 'Hello from P2253';
dsply theCharVar;
P2025();
P142();
P1651();
return;