**free

ctl-opt dftactgrp(*no);

dcl-pi P3200;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1916.rpgleinc'
/copy 'qrpgleref/P936.rpgleinc'
/copy 'qrpgleref/P568.rpgleinc'

dcl-ds theTable extname('T79') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T79 LIMIT 1;

theCharVar = 'Hello from P3200';
dsply theCharVar;
P1916();
P936();
P568();
return;