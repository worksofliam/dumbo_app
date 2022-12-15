**free

ctl-opt dftactgrp(*no);

dcl-pi P347;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P214.rpgleinc'
/copy 'qrpgleref/P259.rpgleinc'
/copy 'qrpgleref/P204.rpgleinc'

dcl-ds theTable extname('T501') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T501 LIMIT 1;

theCharVar = 'Hello from P347';
dsply theCharVar;
P214();
P259();
P204();
return;