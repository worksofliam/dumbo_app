**free

ctl-opt dftactgrp(*no);

dcl-pi P3763;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3161.rpgleinc'
/copy 'qrpgleref/P3172.rpgleinc'
/copy 'qrpgleref/P2374.rpgleinc'

dcl-ds theTable extname('T1124') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1124 LIMIT 1;

theCharVar = 'Hello from P3763';
dsply theCharVar;
P3161();
P3172();
P2374();
return;