**free

ctl-opt dftactgrp(*no);

dcl-pi P2571;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1525.rpgleinc'
/copy 'qrpgleref/P1527.rpgleinc'
/copy 'qrpgleref/P548.rpgleinc'

dcl-ds theTable extname('T178') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T178 LIMIT 1;

theCharVar = 'Hello from P2571';
dsply theCharVar;
P1525();
P1527();
P548();
return;