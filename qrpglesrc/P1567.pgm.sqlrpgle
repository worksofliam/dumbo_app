**free

ctl-opt dftactgrp(*no);

dcl-pi P1567;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P337.rpgleinc'
/copy 'qrpgleref/P1420.rpgleinc'
/copy 'qrpgleref/P838.rpgleinc'

dcl-ds theTable extname('T266') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T266 LIMIT 1;

theCharVar = 'Hello from P1567';
dsply theCharVar;
P337();
P1420();
P838();
return;