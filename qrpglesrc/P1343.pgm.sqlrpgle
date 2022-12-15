**free

ctl-opt dftactgrp(*no);

dcl-pi P1343;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P157.rpgleinc'
/copy 'qrpgleref/P499.rpgleinc'
/copy 'qrpgleref/P1284.rpgleinc'

dcl-ds theTable extname('T1679') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1679 LIMIT 1;

theCharVar = 'Hello from P1343';
dsply theCharVar;
P157();
P499();
P1284();
return;