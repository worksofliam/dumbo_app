**free

ctl-opt dftactgrp(*no);

dcl-pi P835;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P379.rpgleinc'
/copy 'qrpgleref/P413.rpgleinc'
/copy 'qrpgleref/P666.rpgleinc'

dcl-ds theTable extname('T217') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T217 LIMIT 1;

theCharVar = 'Hello from P835';
dsply theCharVar;
P379();
P413();
P666();
return;