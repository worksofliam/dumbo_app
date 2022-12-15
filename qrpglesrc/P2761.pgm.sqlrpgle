**free

ctl-opt dftactgrp(*no);

dcl-pi P2761;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P73.rpgleinc'
/copy 'qrpgleref/P1533.rpgleinc'
/copy 'qrpgleref/P204.rpgleinc'

dcl-ds theTable extname('T480') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T480 LIMIT 1;

theCharVar = 'Hello from P2761';
dsply theCharVar;
P73();
P1533();
P204();
return;