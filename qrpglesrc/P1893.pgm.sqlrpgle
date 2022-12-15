**free

ctl-opt dftactgrp(*no);

dcl-pi P1893;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P462.rpgleinc'
/copy 'qrpgleref/P219.rpgleinc'
/copy 'qrpgleref/P515.rpgleinc'

dcl-ds theTable extname('T402') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T402 LIMIT 1;

theCharVar = 'Hello from P1893';
dsply theCharVar;
P462();
P219();
P515();
return;