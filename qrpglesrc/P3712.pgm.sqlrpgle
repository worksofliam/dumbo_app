**free

ctl-opt dftactgrp(*no);

dcl-pi P3712;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P248.rpgleinc'
/copy 'qrpgleref/P2836.rpgleinc'
/copy 'qrpgleref/P1859.rpgleinc'

dcl-ds theTable extname('T1413') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1413 LIMIT 1;

theCharVar = 'Hello from P3712';
dsply theCharVar;
P248();
P2836();
P1859();
return;