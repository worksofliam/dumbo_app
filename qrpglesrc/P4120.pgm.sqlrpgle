**free

ctl-opt dftactgrp(*no);

dcl-pi P4120;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1505.rpgleinc'
/copy 'qrpgleref/P1966.rpgleinc'
/copy 'qrpgleref/P3769.rpgleinc'

dcl-ds theTable extname('T461') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T461 LIMIT 1;

theCharVar = 'Hello from P4120';
dsply theCharVar;
P1505();
P1966();
P3769();
return;