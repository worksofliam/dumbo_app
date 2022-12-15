**free

ctl-opt dftactgrp(*no);

dcl-pi P3377;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2758.rpgleinc'
/copy 'qrpgleref/P3284.rpgleinc'
/copy 'qrpgleref/P1112.rpgleinc'

dcl-ds theTable extname('T1081') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1081 LIMIT 1;

theCharVar = 'Hello from P3377';
dsply theCharVar;
P2758();
P3284();
P1112();
return;