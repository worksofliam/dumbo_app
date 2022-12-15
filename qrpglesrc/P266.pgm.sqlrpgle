**free

ctl-opt dftactgrp(*no);

dcl-pi P266;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P82.rpgleinc'
/copy 'qrpgleref/P56.rpgleinc'
/copy 'qrpgleref/P79.rpgleinc'

dcl-ds theTable extname('T195') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T195 LIMIT 1;

theCharVar = 'Hello from P266';
dsply theCharVar;
P82();
P56();
P79();
return;