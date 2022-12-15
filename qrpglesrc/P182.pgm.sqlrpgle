**free

ctl-opt dftactgrp(*no);

dcl-pi P182;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P145.rpgleinc'
/copy 'qrpgleref/P24.rpgleinc'
/copy 'qrpgleref/P99.rpgleinc'

dcl-ds theTable extname('T324') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T324 LIMIT 1;

theCharVar = 'Hello from P182';
dsply theCharVar;
P145();
P24();
P99();
return;