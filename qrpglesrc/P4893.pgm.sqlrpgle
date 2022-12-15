**free

ctl-opt dftactgrp(*no);

dcl-pi P4893;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2541.rpgleinc'
/copy 'qrpgleref/P253.rpgleinc'
/copy 'qrpgleref/P2294.rpgleinc'

dcl-ds theTable extname('T1569') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1569 LIMIT 1;

theCharVar = 'Hello from P4893';
dsply theCharVar;
P2541();
P253();
P2294();
return;