**free

ctl-opt dftactgrp(*no);

dcl-pi P327;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P132.rpgleinc'
/copy 'qrpgleref/P76.rpgleinc'
/copy 'qrpgleref/P244.rpgleinc'

dcl-ds theTable extname('T1054') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1054 LIMIT 1;

theCharVar = 'Hello from P327';
dsply theCharVar;
P132();
P76();
P244();
return;