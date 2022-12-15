**free

ctl-opt dftactgrp(*no);

dcl-pi P104;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P60.rpgleinc'
/copy 'qrpgleref/P97.rpgleinc'
/copy 'qrpgleref/P9.rpgleinc'

dcl-ds theTable extname('T1178') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1178 LIMIT 1;

theCharVar = 'Hello from P104';
dsply theCharVar;
P60();
P97();
P9();
return;