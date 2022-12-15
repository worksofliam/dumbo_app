**free

ctl-opt dftactgrp(*no);

dcl-pi P1953;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1893.rpgleinc'
/copy 'qrpgleref/P1731.rpgleinc'
/copy 'qrpgleref/P233.rpgleinc'

dcl-ds theTable extname('T1491') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1491 LIMIT 1;

theCharVar = 'Hello from P1953';
dsply theCharVar;
P1893();
P1731();
P233();
return;