**free

ctl-opt dftactgrp(*no);

dcl-pi P1123;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P773.rpgleinc'
/copy 'qrpgleref/P372.rpgleinc'
/copy 'qrpgleref/P933.rpgleinc'

dcl-ds theTable extname('T1115') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1115 LIMIT 1;

theCharVar = 'Hello from P1123';
dsply theCharVar;
P773();
P372();
P933();
return;