**free

ctl-opt dftactgrp(*no);

dcl-pi P4760;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3578.rpgleinc'
/copy 'qrpgleref/P3212.rpgleinc'
/copy 'qrpgleref/P383.rpgleinc'

dcl-ds theTable extname('T750') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T750 LIMIT 1;

theCharVar = 'Hello from P4760';
dsply theCharVar;
P3578();
P3212();
P383();
return;