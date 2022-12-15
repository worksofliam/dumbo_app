**free

ctl-opt dftactgrp(*no);

dcl-pi P246;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P31.rpgleinc'
/copy 'qrpgleref/P26.rpgleinc'
/copy 'qrpgleref/P87.rpgleinc'

dcl-ds theTable extname('T913') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T913 LIMIT 1;

theCharVar = 'Hello from P246';
dsply theCharVar;
P31();
P26();
P87();
return;