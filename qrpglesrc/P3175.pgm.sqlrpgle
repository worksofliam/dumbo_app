**free

ctl-opt dftactgrp(*no);

dcl-pi P3175;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P640.rpgleinc'
/copy 'qrpgleref/P895.rpgleinc'
/copy 'qrpgleref/P204.rpgleinc'

dcl-ds theTable extname('T1622') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1622 LIMIT 1;

theCharVar = 'Hello from P3175';
dsply theCharVar;
P640();
P895();
P204();
return;