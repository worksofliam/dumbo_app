**free

ctl-opt dftactgrp(*no);

dcl-pi P665;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P495.rpgleinc'
/copy 'qrpgleref/P514.rpgleinc'
/copy 'qrpgleref/P233.rpgleinc'

dcl-ds theTable extname('T1489') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1489 LIMIT 1;

theCharVar = 'Hello from P665';
dsply theCharVar;
P495();
P514();
P233();
return;