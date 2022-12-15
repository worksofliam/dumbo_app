**free

ctl-opt dftactgrp(*no);

dcl-pi P3700;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1547.rpgleinc'
/copy 'qrpgleref/P1059.rpgleinc'
/copy 'qrpgleref/P1604.rpgleinc'

dcl-ds theTable extname('T1353') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1353 LIMIT 1;

theCharVar = 'Hello from P3700';
dsply theCharVar;
P1547();
P1059();
P1604();
return;