**free

ctl-opt dftactgrp(*no);

dcl-pi P2041;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P384.rpgleinc'
/copy 'qrpgleref/P759.rpgleinc'
/copy 'qrpgleref/P780.rpgleinc'

dcl-ds theTable extname('T99') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T99 LIMIT 1;

theCharVar = 'Hello from P2041';
dsply theCharVar;
P384();
P759();
P780();
return;