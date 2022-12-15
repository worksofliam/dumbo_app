**free

ctl-opt dftactgrp(*no);

dcl-pi P1004;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P284.rpgleinc'
/copy 'qrpgleref/P851.rpgleinc'
/copy 'qrpgleref/P832.rpgleinc'

dcl-ds theTable extname('T1152') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1152 LIMIT 1;

theCharVar = 'Hello from P1004';
dsply theCharVar;
P284();
P851();
P832();
return;