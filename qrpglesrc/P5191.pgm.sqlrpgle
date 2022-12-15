**free

ctl-opt dftactgrp(*no);

dcl-pi P5191;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2439.rpgleinc'
/copy 'qrpgleref/P2500.rpgleinc'
/copy 'qrpgleref/P130.rpgleinc'

dcl-ds theTable extname('T1523') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1523 LIMIT 1;

theCharVar = 'Hello from P5191';
dsply theCharVar;
P2439();
P2500();
P130();
return;