**free

ctl-opt dftactgrp(*no);

dcl-pi P4585;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P899.rpgleinc'
/copy 'qrpgleref/P933.rpgleinc'
/copy 'qrpgleref/P2413.rpgleinc'

dcl-ds theTable extname('T849') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T849 LIMIT 1;

theCharVar = 'Hello from P4585';
dsply theCharVar;
P899();
P933();
P2413();
return;