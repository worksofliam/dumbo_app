**free

ctl-opt dftactgrp(*no);

dcl-pi P1295;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P674.rpgleinc'
/copy 'qrpgleref/P1180.rpgleinc'
/copy 'qrpgleref/P1227.rpgleinc'

dcl-ds theTable extname('T1314') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1314 LIMIT 1;

theCharVar = 'Hello from P1295';
dsply theCharVar;
P674();
P1180();
P1227();
return;