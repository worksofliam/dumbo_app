**free

ctl-opt dftactgrp(*no);

dcl-pi P4458;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P935.rpgleinc'
/copy 'qrpgleref/P1499.rpgleinc'
/copy 'qrpgleref/P4233.rpgleinc'

dcl-ds theTable extname('T1179') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1179 LIMIT 1;

theCharVar = 'Hello from P4458';
dsply theCharVar;
P935();
P1499();
P4233();
return;