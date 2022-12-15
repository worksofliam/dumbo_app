**free

ctl-opt dftactgrp(*no);

dcl-pi P2130;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1485.rpgleinc'
/copy 'qrpgleref/P1185.rpgleinc'
/copy 'qrpgleref/P413.rpgleinc'

dcl-ds theTable extname('T833') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T833 LIMIT 1;

theCharVar = 'Hello from P2130';
dsply theCharVar;
P1485();
P1185();
P413();
return;