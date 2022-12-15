**free

ctl-opt dftactgrp(*no);

dcl-pi P728;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P531.rpgleinc'
/copy 'qrpgleref/P491.rpgleinc'
/copy 'qrpgleref/P284.rpgleinc'

dcl-ds theTable extname('T136') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T136 LIMIT 1;

theCharVar = 'Hello from P728';
dsply theCharVar;
P531();
P491();
P284();
return;