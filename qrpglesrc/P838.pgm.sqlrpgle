**free

ctl-opt dftactgrp(*no);

dcl-pi P838;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P157.rpgleinc'
/copy 'qrpgleref/P519.rpgleinc'
/copy 'qrpgleref/P413.rpgleinc'

dcl-ds theTable extname('T293') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T293 LIMIT 1;

theCharVar = 'Hello from P838';
dsply theCharVar;
P157();
P519();
P413();
return;