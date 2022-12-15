**free

ctl-opt dftactgrp(*no);

dcl-pi P3051;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1069.rpgleinc'
/copy 'qrpgleref/P2029.rpgleinc'
/copy 'qrpgleref/P413.rpgleinc'

dcl-ds theTable extname('T1019') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1019 LIMIT 1;

theCharVar = 'Hello from P3051';
dsply theCharVar;
P1069();
P2029();
P413();
return;