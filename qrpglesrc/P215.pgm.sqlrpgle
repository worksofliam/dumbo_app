**free

ctl-opt dftactgrp(*no);

dcl-pi P215;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P175.rpgleinc'
/copy 'qrpgleref/P76.rpgleinc'
/copy 'qrpgleref/P99.rpgleinc'

dcl-ds theTable extname('T26') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T26 LIMIT 1;

theCharVar = 'Hello from P215';
dsply theCharVar;
P175();
P76();
P99();
return;