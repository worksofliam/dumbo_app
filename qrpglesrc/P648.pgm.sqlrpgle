**free

ctl-opt dftactgrp(*no);

dcl-pi P648;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P204.rpgleinc'
/copy 'qrpgleref/P300.rpgleinc'
/copy 'qrpgleref/P186.rpgleinc'

dcl-ds theTable extname('T11') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T11 LIMIT 1;

theCharVar = 'Hello from P648';
dsply theCharVar;
P204();
P300();
P186();
return;