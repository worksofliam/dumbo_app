**free

ctl-opt dftactgrp(*no);

dcl-pi P1733;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P182.rpgleinc'
/copy 'qrpgleref/P994.rpgleinc'
/copy 'qrpgleref/P1619.rpgleinc'

dcl-ds theTable extname('T55') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T55 LIMIT 1;

theCharVar = 'Hello from P1733';
dsply theCharVar;
P182();
P994();
P1619();
return;