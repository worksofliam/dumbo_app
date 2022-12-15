**free

ctl-opt dftactgrp(*no);

dcl-pi P1051;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P640.rpgleinc'
/copy 'qrpgleref/P132.rpgleinc'
/copy 'qrpgleref/P419.rpgleinc'

dcl-ds theTable extname('T1115') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1115 LIMIT 1;

theCharVar = 'Hello from P1051';
dsply theCharVar;
P640();
P132();
P419();
return;