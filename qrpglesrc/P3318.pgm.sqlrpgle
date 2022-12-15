**free

ctl-opt dftactgrp(*no);

dcl-pi P3318;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3097.rpgleinc'
/copy 'qrpgleref/P2278.rpgleinc'
/copy 'qrpgleref/P2423.rpgleinc'

dcl-ds theTable extname('T125') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T125 LIMIT 1;

theCharVar = 'Hello from P3318';
dsply theCharVar;
P3097();
P2278();
P2423();
return;