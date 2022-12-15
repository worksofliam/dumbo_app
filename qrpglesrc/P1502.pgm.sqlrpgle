**free

ctl-opt dftactgrp(*no);

dcl-pi P1502;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1476.rpgleinc'
/copy 'qrpgleref/P497.rpgleinc'
/copy 'qrpgleref/P69.rpgleinc'

dcl-ds theTable extname('T130') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T130 LIMIT 1;

theCharVar = 'Hello from P1502';
dsply theCharVar;
P1476();
P497();
P69();
return;