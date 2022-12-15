**free

ctl-opt dftactgrp(*no);

dcl-pi P1965;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P179.rpgleinc'
/copy 'qrpgleref/P123.rpgleinc'
/copy 'qrpgleref/P1669.rpgleinc'

dcl-ds theTable extname('T838') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T838 LIMIT 1;

theCharVar = 'Hello from P1965';
dsply theCharVar;
P179();
P123();
P1669();
return;