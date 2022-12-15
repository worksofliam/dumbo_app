**free

ctl-opt dftactgrp(*no);

dcl-pi P4401;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3120.rpgleinc'
/copy 'qrpgleref/P488.rpgleinc'
/copy 'qrpgleref/P1555.rpgleinc'

dcl-ds theTable extname('T1375') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1375 LIMIT 1;

theCharVar = 'Hello from P4401';
dsply theCharVar;
P3120();
P488();
P1555();
return;