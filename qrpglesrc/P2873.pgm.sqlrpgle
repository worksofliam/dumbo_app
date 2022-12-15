**free

ctl-opt dftactgrp(*no);

dcl-pi P2873;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P756.rpgleinc'
/copy 'qrpgleref/P1628.rpgleinc'
/copy 'qrpgleref/P280.rpgleinc'

dcl-ds theTable extname('T358') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T358 LIMIT 1;

theCharVar = 'Hello from P2873';
dsply theCharVar;
P756();
P1628();
P280();
return;