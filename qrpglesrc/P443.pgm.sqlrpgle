**free

ctl-opt dftactgrp(*no);

dcl-pi P443;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P390.rpgleinc'
/copy 'qrpgleref/P204.rpgleinc'
/copy 'qrpgleref/P408.rpgleinc'

dcl-ds theTable extname('T178') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T178 LIMIT 1;

theCharVar = 'Hello from P443';
dsply theCharVar;
P390();
P204();
P408();
return;