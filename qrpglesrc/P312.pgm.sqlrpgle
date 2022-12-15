**free

ctl-opt dftactgrp(*no);

dcl-pi P312;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P76.rpgleinc'
/copy 'qrpgleref/P285.rpgleinc'
/copy 'qrpgleref/P44.rpgleinc'

dcl-ds theTable extname('T1160') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1160 LIMIT 1;

theCharVar = 'Hello from P312';
dsply theCharVar;
P76();
P285();
P44();
return;