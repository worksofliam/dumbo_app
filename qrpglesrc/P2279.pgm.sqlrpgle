**free

ctl-opt dftactgrp(*no);

dcl-pi P2279;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2026.rpgleinc'
/copy 'qrpgleref/P1097.rpgleinc'
/copy 'qrpgleref/P1067.rpgleinc'

dcl-ds theTable extname('T791') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T791 LIMIT 1;

theCharVar = 'Hello from P2279';
dsply theCharVar;
P2026();
P1097();
P1067();
return;