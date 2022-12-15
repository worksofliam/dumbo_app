**free

ctl-opt dftactgrp(*no);

dcl-pi P3309;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P771.rpgleinc'
/copy 'qrpgleref/P2356.rpgleinc'
/copy 'qrpgleref/P3268.rpgleinc'

dcl-ds theTable extname('T1246') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1246 LIMIT 1;

theCharVar = 'Hello from P3309';
dsply theCharVar;
P771();
P2356();
P3268();
return;