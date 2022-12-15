**free

ctl-opt dftactgrp(*no);

dcl-pi P483;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P95.rpgleinc'
/copy 'qrpgleref/P302.rpgleinc'
/copy 'qrpgleref/P438.rpgleinc'

dcl-ds theTable extname('T205') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T205 LIMIT 1;

theCharVar = 'Hello from P483';
dsply theCharVar;
P95();
P302();
P438();
return;