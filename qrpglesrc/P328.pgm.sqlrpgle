**free

ctl-opt dftactgrp(*no);

dcl-pi P328;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P230.rpgleinc'
/copy 'qrpgleref/P190.rpgleinc'
/copy 'qrpgleref/P125.rpgleinc'

dcl-ds theTable extname('T1124') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1124 LIMIT 1;

theCharVar = 'Hello from P328';
dsply theCharVar;
P230();
P190();
P125();
return;