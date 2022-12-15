**free

ctl-opt dftactgrp(*no);

dcl-pi P438;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P246.rpgleinc'
/copy 'qrpgleref/P256.rpgleinc'
/copy 'qrpgleref/P87.rpgleinc'

dcl-ds theTable extname('T106') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T106 LIMIT 1;

theCharVar = 'Hello from P438';
dsply theCharVar;
P246();
P256();
P87();
return;