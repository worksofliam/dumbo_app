**free

ctl-opt dftactgrp(*no);

dcl-pi P3374;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1849.rpgleinc'
/copy 'qrpgleref/P2026.rpgleinc'
/copy 'qrpgleref/P1473.rpgleinc'

dcl-ds theTable extname('T614') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T614 LIMIT 1;

theCharVar = 'Hello from P3374';
dsply theCharVar;
P1849();
P2026();
P1473();
return;