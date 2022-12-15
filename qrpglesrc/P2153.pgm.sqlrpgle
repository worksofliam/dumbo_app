**free

ctl-opt dftactgrp(*no);

dcl-pi P2153;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1413.rpgleinc'
/copy 'qrpgleref/P1666.rpgleinc'
/copy 'qrpgleref/P718.rpgleinc'

dcl-ds theTable extname('T705') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T705 LIMIT 1;

theCharVar = 'Hello from P2153';
dsply theCharVar;
P1413();
P1666();
P718();
return;