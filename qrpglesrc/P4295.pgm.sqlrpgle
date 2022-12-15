**free

ctl-opt dftactgrp(*no);

dcl-pi P4295;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1259.rpgleinc'
/copy 'qrpgleref/P1340.rpgleinc'
/copy 'qrpgleref/P3551.rpgleinc'

dcl-ds theTable extname('T1361') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1361 LIMIT 1;

theCharVar = 'Hello from P4295';
dsply theCharVar;
P1259();
P1340();
P3551();
return;