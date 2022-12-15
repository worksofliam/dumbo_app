**free

ctl-opt dftactgrp(*no);

dcl-pi P1590;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P413.rpgleinc'
/copy 'qrpgleref/P347.rpgleinc'
/copy 'qrpgleref/P556.rpgleinc'

dcl-ds theTable extname('T167') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T167 LIMIT 1;

theCharVar = 'Hello from P1590';
dsply theCharVar;
P413();
P347();
P556();
return;