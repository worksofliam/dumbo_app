**free

ctl-opt dftactgrp(*no);

dcl-pi P1859;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1340.rpgleinc'
/copy 'qrpgleref/P501.rpgleinc'
/copy 'qrpgleref/P1461.rpgleinc'

dcl-ds theTable extname('T1544') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1544 LIMIT 1;

theCharVar = 'Hello from P1859';
dsply theCharVar;
P1340();
P501();
P1461();
return;