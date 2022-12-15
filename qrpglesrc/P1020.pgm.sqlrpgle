**free

ctl-opt dftactgrp(*no);

dcl-pi P1020;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P240.rpgleinc'
/copy 'qrpgleref/P464.rpgleinc'
/copy 'qrpgleref/P417.rpgleinc'

dcl-ds theTable extname('T160') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T160 LIMIT 1;

theCharVar = 'Hello from P1020';
dsply theCharVar;
P240();
P464();
P417();
return;