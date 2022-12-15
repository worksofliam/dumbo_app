**free

ctl-opt dftactgrp(*no);

dcl-pi P4964;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3413.rpgleinc'
/copy 'qrpgleref/P505.rpgleinc'
/copy 'qrpgleref/P3934.rpgleinc'

dcl-ds theTable extname('T966') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T966 LIMIT 1;

theCharVar = 'Hello from P4964';
dsply theCharVar;
P3413();
P505();
P3934();
return;