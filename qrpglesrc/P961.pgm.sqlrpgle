**free

ctl-opt dftactgrp(*no);

dcl-pi P961;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P99.rpgleinc'
/copy 'qrpgleref/P168.rpgleinc'
/copy 'qrpgleref/P594.rpgleinc'

dcl-ds theTable extname('T879') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T879 LIMIT 1;

theCharVar = 'Hello from P961';
dsply theCharVar;
P99();
P168();
P594();
return;