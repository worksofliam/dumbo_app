**free

ctl-opt dftactgrp(*no);

dcl-pi P2238;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P179.rpgleinc'
/copy 'qrpgleref/P2015.rpgleinc'
/copy 'qrpgleref/P526.rpgleinc'

dcl-ds theTable extname('T962') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T962 LIMIT 1;

theCharVar = 'Hello from P2238';
dsply theCharVar;
P179();
P2015();
P526();
return;