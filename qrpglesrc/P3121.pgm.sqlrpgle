**free

ctl-opt dftactgrp(*no);

dcl-pi P3121;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2601.rpgleinc'
/copy 'qrpgleref/P2511.rpgleinc'
/copy 'qrpgleref/P3062.rpgleinc'

dcl-ds theTable extname('T276') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T276 LIMIT 1;

theCharVar = 'Hello from P3121';
dsply theCharVar;
P2601();
P2511();
P3062();
return;