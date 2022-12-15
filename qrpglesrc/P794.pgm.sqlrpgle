**free

ctl-opt dftactgrp(*no);

dcl-pi P794;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P511.rpgleinc'
/copy 'qrpgleref/P348.rpgleinc'
/copy 'qrpgleref/P204.rpgleinc'

dcl-ds theTable extname('T282') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T282 LIMIT 1;

theCharVar = 'Hello from P794';
dsply theCharVar;
P511();
P348();
P204();
return;