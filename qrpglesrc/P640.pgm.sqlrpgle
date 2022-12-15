**free

ctl-opt dftactgrp(*no);

dcl-pi P640;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P213.rpgleinc'
/copy 'qrpgleref/P265.rpgleinc'
/copy 'qrpgleref/P630.rpgleinc'

dcl-ds theTable extname('T623') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T623 LIMIT 1;

theCharVar = 'Hello from P640';
dsply theCharVar;
P213();
P265();
P630();
return;