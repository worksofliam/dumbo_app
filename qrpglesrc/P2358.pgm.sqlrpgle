**free

ctl-opt dftactgrp(*no);

dcl-pi P2358;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1166.rpgleinc'
/copy 'qrpgleref/P2108.rpgleinc'
/copy 'qrpgleref/P280.rpgleinc'

dcl-ds theTable extname('T158') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T158 LIMIT 1;

theCharVar = 'Hello from P2358';
dsply theCharVar;
P1166();
P2108();
P280();
return;