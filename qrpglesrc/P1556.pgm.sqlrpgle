**free

ctl-opt dftactgrp(*no);

dcl-pi P1556;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P366.rpgleinc'
/copy 'qrpgleref/P49.rpgleinc'
/copy 'qrpgleref/P1337.rpgleinc'

dcl-ds theTable extname('T35') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T35 LIMIT 1;

theCharVar = 'Hello from P1556';
dsply theCharVar;
P366();
P49();
P1337();
return;