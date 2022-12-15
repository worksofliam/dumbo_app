**free

ctl-opt dftactgrp(*no);

dcl-pi P3517;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2479.rpgleinc'
/copy 'qrpgleref/P3397.rpgleinc'
/copy 'qrpgleref/P1527.rpgleinc'

dcl-ds theTable extname('T758') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T758 LIMIT 1;

theCharVar = 'Hello from P3517';
dsply theCharVar;
P2479();
P3397();
P1527();
return;