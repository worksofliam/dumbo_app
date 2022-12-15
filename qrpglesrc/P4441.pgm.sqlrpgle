**free

ctl-opt dftactgrp(*no);

dcl-pi P4441;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3180.rpgleinc'
/copy 'qrpgleref/P3452.rpgleinc'
/copy 'qrpgleref/P759.rpgleinc'

dcl-ds theTable extname('T1433') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1433 LIMIT 1;

theCharVar = 'Hello from P4441';
dsply theCharVar;
P3180();
P3452();
P759();
return;