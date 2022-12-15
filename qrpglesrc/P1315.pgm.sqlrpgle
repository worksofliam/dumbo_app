**free

ctl-opt dftactgrp(*no);

dcl-pi P1315;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1183.rpgleinc'
/copy 'qrpgleref/P431.rpgleinc'
/copy 'qrpgleref/P702.rpgleinc'

dcl-ds theTable extname('T328') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T328 LIMIT 1;

theCharVar = 'Hello from P1315';
dsply theCharVar;
P1183();
P431();
P702();
return;