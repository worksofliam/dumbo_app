**free

ctl-opt dftactgrp(*no);

dcl-pi P3298;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P309.rpgleinc'
/copy 'qrpgleref/P1703.rpgleinc'
/copy 'qrpgleref/P2547.rpgleinc'

dcl-ds theTable extname('T503') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T503 LIMIT 1;

theCharVar = 'Hello from P3298';
dsply theCharVar;
P309();
P1703();
P2547();
return;