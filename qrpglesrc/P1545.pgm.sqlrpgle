**free

ctl-opt dftactgrp(*no);

dcl-pi P1545;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1344.rpgleinc'
/copy 'qrpgleref/P413.rpgleinc'

dcl-ds theTable extname('T1674') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1674 LIMIT 1;

theCharVar = 'Hello from P1545';
dsply theCharVar;
P1344();
P413();
return;