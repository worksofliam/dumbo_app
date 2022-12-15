**free

ctl-opt dftactgrp(*no);

dcl-pi P5105;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3569.rpgleinc'
/copy 'qrpgleref/P904.rpgleinc'
/copy 'qrpgleref/P2846.rpgleinc'

dcl-ds theTable extname('T194') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T194 LIMIT 1;

theCharVar = 'Hello from P5105';
dsply theCharVar;
P3569();
P904();
P2846();
return;