**free

ctl-opt dftactgrp(*no);

dcl-pi P1541;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P729.rpgleinc'
/copy 'qrpgleref/P120.rpgleinc'
/copy 'qrpgleref/P971.rpgleinc'

dcl-ds theTable extname('T886') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T886 LIMIT 1;

theCharVar = 'Hello from P1541';
dsply theCharVar;
P729();
P120();
P971();
return;