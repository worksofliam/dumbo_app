**free

ctl-opt dftactgrp(*no);

dcl-pi P2250;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P572.rpgleinc'
/copy 'qrpgleref/P652.rpgleinc'
/copy 'qrpgleref/P491.rpgleinc'

dcl-ds theTable extname('T1125') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1125 LIMIT 1;

theCharVar = 'Hello from P2250';
dsply theCharVar;
P572();
P652();
P491();
return;