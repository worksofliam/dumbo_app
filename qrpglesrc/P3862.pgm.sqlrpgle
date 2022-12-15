**free

ctl-opt dftactgrp(*no);

dcl-pi P3862;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2066.rpgleinc'
/copy 'qrpgleref/P1468.rpgleinc'
/copy 'qrpgleref/P1969.rpgleinc'

dcl-ds theTable extname('T1515') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1515 LIMIT 1;

theCharVar = 'Hello from P3862';
dsply theCharVar;
P2066();
P1468();
P1969();
return;