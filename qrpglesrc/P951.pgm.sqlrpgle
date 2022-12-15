**free

ctl-opt dftactgrp(*no);

dcl-pi P951;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P858.rpgleinc'
/copy 'qrpgleref/P204.rpgleinc'
/copy 'qrpgleref/P753.rpgleinc'

dcl-ds theTable extname('T384') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T384 LIMIT 1;

theCharVar = 'Hello from P951';
dsply theCharVar;
P858();
P204();
P753();
return;