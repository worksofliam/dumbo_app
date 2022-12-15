**free

ctl-opt dftactgrp(*no);

dcl-pi P168;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P139.rpgleinc'
/copy 'qrpgleref/P79.rpgleinc'
/copy 'qrpgleref/P119.rpgleinc'

dcl-ds theTable extname('T87') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T87 LIMIT 1;

theCharVar = 'Hello from P168';
dsply theCharVar;
P139();
P79();
P119();
return;