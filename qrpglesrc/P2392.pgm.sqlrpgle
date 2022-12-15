**free

ctl-opt dftactgrp(*no);

dcl-pi P2392;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P413.rpgleinc'
/copy 'qrpgleref/P1602.rpgleinc'
/copy 'qrpgleref/P881.rpgleinc'

dcl-ds theTable extname('T718') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T718 LIMIT 1;

theCharVar = 'Hello from P2392';
dsply theCharVar;
P413();
P1602();
P881();
return;