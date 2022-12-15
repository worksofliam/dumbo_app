**free

ctl-opt dftactgrp(*no);

dcl-pi P1346;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P495.rpgleinc'
/copy 'qrpgleref/P995.rpgleinc'
/copy 'qrpgleref/P750.rpgleinc'

dcl-ds theTable extname('T23') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T23 LIMIT 1;

theCharVar = 'Hello from P1346';
dsply theCharVar;
P495();
P995();
P750();
return;