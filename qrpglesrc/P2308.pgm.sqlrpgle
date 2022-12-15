**free

ctl-opt dftactgrp(*no);

dcl-pi P2308;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P809.rpgleinc'
/copy 'qrpgleref/P413.rpgleinc'
/copy 'qrpgleref/P1562.rpgleinc'

dcl-ds theTable extname('T248') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T248 LIMIT 1;

theCharVar = 'Hello from P2308';
dsply theCharVar;
P809();
P413();
P1562();
return;