**free

ctl-opt dftactgrp(*no);

dcl-pi P547;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P364.rpgleinc'
/copy 'qrpgleref/P97.rpgleinc'
/copy 'qrpgleref/P371.rpgleinc'

dcl-ds theTable extname('T1236') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1236 LIMIT 1;

theCharVar = 'Hello from P547';
dsply theCharVar;
P364();
P97();
P371();
return;