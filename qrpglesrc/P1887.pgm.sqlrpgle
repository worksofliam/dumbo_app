**free

ctl-opt dftactgrp(*no);

dcl-pi P1887;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1564.rpgleinc'
/copy 'qrpgleref/P1657.rpgleinc'
/copy 'qrpgleref/P295.rpgleinc'

dcl-ds theTable extname('T1089') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1089 LIMIT 1;

theCharVar = 'Hello from P1887';
dsply theCharVar;
P1564();
P1657();
P295();
return;