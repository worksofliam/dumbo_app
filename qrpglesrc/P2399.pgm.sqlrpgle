**free

ctl-opt dftactgrp(*no);

dcl-pi P2399;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P413.rpgleinc'
/copy 'qrpgleref/P952.rpgleinc'
/copy 'qrpgleref/P1833.rpgleinc'

dcl-ds theTable extname('T414') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T414 LIMIT 1;

theCharVar = 'Hello from P2399';
dsply theCharVar;
P413();
P952();
P1833();
return;