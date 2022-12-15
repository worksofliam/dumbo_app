**free

ctl-opt dftactgrp(*no);

dcl-pi P527;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P142.rpgleinc'
/copy 'qrpgleref/P341.rpgleinc'
/copy 'qrpgleref/P285.rpgleinc'

dcl-ds theTable extname('T706') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T706 LIMIT 1;

theCharVar = 'Hello from P527';
dsply theCharVar;
P142();
P341();
P285();
return;