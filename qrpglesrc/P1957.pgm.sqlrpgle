**free

ctl-opt dftactgrp(*no);

dcl-pi P1957;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1745.rpgleinc'
/copy 'qrpgleref/P294.rpgleinc'
/copy 'qrpgleref/P1544.rpgleinc'

dcl-ds theTable extname('T745') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T745 LIMIT 1;

theCharVar = 'Hello from P1957';
dsply theCharVar;
P1745();
P294();
P1544();
return;