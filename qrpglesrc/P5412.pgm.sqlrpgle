**free

ctl-opt dftactgrp(*no);

dcl-pi P5412;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3383.rpgleinc'
/copy 'qrpgleref/P1471.rpgleinc'
/copy 'qrpgleref/P2744.rpgleinc'

dcl-ds theTable extname('T1019') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1019 LIMIT 1;

theCharVar = 'Hello from P5412';
dsply theCharVar;
P3383();
P1471();
P2744();
return;