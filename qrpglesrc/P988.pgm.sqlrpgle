**free

ctl-opt dftactgrp(*no);

dcl-pi P988;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P413.rpgleinc'
/copy 'qrpgleref/P53.rpgleinc'
/copy 'qrpgleref/P118.rpgleinc'

dcl-ds theTable extname('T631') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T631 LIMIT 1;

theCharVar = 'Hello from P988';
dsply theCharVar;
P413();
P53();
P118();
return;