**free

ctl-opt dftactgrp(*no);

dcl-pi P449;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P92.rpgleinc'
/copy 'qrpgleref/P335.rpgleinc'
/copy 'qrpgleref/P413.rpgleinc'

dcl-ds theTable extname('T1266') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1266 LIMIT 1;

theCharVar = 'Hello from P449';
dsply theCharVar;
P92();
P335();
P413();
return;