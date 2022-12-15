**free

ctl-opt dftactgrp(*no);

dcl-pi P1838;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1525.rpgleinc'
/copy 'qrpgleref/P1783.rpgleinc'
/copy 'qrpgleref/P1218.rpgleinc'

dcl-ds theTable extname('T761') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T761 LIMIT 1;

theCharVar = 'Hello from P1838';
dsply theCharVar;
P1525();
P1783();
P1218();
return;