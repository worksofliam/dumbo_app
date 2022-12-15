**free

ctl-opt dftactgrp(*no);

dcl-pi P2454;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2182.rpgleinc'
/copy 'qrpgleref/P918.rpgleinc'
/copy 'qrpgleref/P243.rpgleinc'

dcl-ds theTable extname('T971') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T971 LIMIT 1;

theCharVar = 'Hello from P2454';
dsply theCharVar;
P2182();
P918();
P243();
return;