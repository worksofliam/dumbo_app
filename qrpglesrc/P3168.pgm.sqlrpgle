**free

ctl-opt dftactgrp(*no);

dcl-pi P3168;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2071.rpgleinc'
/copy 'qrpgleref/P2966.rpgleinc'
/copy 'qrpgleref/P24.rpgleinc'

dcl-ds theTable extname('T19') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T19 LIMIT 1;

theCharVar = 'Hello from P3168';
dsply theCharVar;
P2071();
P2966();
P24();
return;