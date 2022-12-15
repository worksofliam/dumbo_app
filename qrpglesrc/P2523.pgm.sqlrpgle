**free

ctl-opt dftactgrp(*no);

dcl-pi P2523;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1288.rpgleinc'
/copy 'qrpgleref/P332.rpgleinc'
/copy 'qrpgleref/P2511.rpgleinc'

dcl-ds theTable extname('T96') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T96 LIMIT 1;

theCharVar = 'Hello from P2523';
dsply theCharVar;
P1288();
P332();
P2511();
return;