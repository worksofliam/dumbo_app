**free

ctl-opt dftactgrp(*no);

dcl-pi P931;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P104.rpgleinc'
/copy 'qrpgleref/P493.rpgleinc'
/copy 'qrpgleref/P100.rpgleinc'

dcl-ds theTable extname('T53') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T53 LIMIT 1;

theCharVar = 'Hello from P931';
dsply theCharVar;
P104();
P493();
P100();
return;