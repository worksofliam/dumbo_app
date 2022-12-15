**free

ctl-opt dftactgrp(*no);

dcl-pi P4170;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1303.rpgleinc'
/copy 'qrpgleref/P2724.rpgleinc'
/copy 'qrpgleref/P413.rpgleinc'

dcl-ds theTable extname('T1399') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1399 LIMIT 1;

theCharVar = 'Hello from P4170';
dsply theCharVar;
P1303();
P2724();
P413();
return;