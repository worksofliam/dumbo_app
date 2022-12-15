**free

ctl-opt dftactgrp(*no);

dcl-pi P3096;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1439.rpgleinc'
/copy 'qrpgleref/P930.rpgleinc'
/copy 'qrpgleref/P916.rpgleinc'

dcl-ds theTable extname('T1129') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1129 LIMIT 1;

theCharVar = 'Hello from P3096';
dsply theCharVar;
P1439();
P930();
P916();
return;