**free

ctl-opt dftactgrp(*no);

dcl-pi P1483;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P321.rpgleinc'
/copy 'qrpgleref/P460.rpgleinc'
/copy 'qrpgleref/P771.rpgleinc'

dcl-ds theTable extname('T74') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T74 LIMIT 1;

theCharVar = 'Hello from P1483';
dsply theCharVar;
P321();
P460();
P771();
return;