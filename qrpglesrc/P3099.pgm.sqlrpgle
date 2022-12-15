**free

ctl-opt dftactgrp(*no);

dcl-pi P3099;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2062.rpgleinc'
/copy 'qrpgleref/P233.rpgleinc'
/copy 'qrpgleref/P1115.rpgleinc'

dcl-ds theTable extname('T786') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T786 LIMIT 1;

theCharVar = 'Hello from P3099';
dsply theCharVar;
P2062();
P233();
P1115();
return;