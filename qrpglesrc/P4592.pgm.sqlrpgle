**free

ctl-opt dftactgrp(*no);

dcl-pi P4592;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2027.rpgleinc'
/copy 'qrpgleref/P2241.rpgleinc'
/copy 'qrpgleref/P3084.rpgleinc'

dcl-ds theTable extname('T940') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T940 LIMIT 1;

theCharVar = 'Hello from P4592';
dsply theCharVar;
P2027();
P2241();
P3084();
return;