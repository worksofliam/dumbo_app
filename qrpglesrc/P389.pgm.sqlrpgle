**free

ctl-opt dftactgrp(*no);

dcl-pi P389;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P382.rpgleinc'
/copy 'qrpgleref/P9.rpgleinc'
/copy 'qrpgleref/P366.rpgleinc'

dcl-ds theTable extname('T1059') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1059 LIMIT 1;

theCharVar = 'Hello from P389';
dsply theCharVar;
P382();
P9();
P366();
return;