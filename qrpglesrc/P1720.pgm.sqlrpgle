**free

ctl-opt dftactgrp(*no);

dcl-pi P1720;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P145.rpgleinc'
/copy 'qrpgleref/P1619.rpgleinc'
/copy 'qrpgleref/P1040.rpgleinc'

dcl-ds theTable extname('T1161') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1161 LIMIT 1;

theCharVar = 'Hello from P1720';
dsply theCharVar;
P145();
P1619();
P1040();
return;