**free

ctl-opt dftactgrp(*no);

dcl-pi P3688;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P759.rpgleinc'
/copy 'qrpgleref/P3663.rpgleinc'
/copy 'qrpgleref/P3636.rpgleinc'

dcl-ds theTable extname('T1099') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1099 LIMIT 1;

theCharVar = 'Hello from P3688';
dsply theCharVar;
P759();
P3663();
P3636();
return;