**free

ctl-opt dftactgrp(*no);

dcl-pi P4439;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4352.rpgleinc'
/copy 'qrpgleref/P3116.rpgleinc'
/copy 'qrpgleref/P2000.rpgleinc'

dcl-ds theTable extname('T1845') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1845 LIMIT 1;

theCharVar = 'Hello from P4439';
dsply theCharVar;
P4352();
P3116();
P2000();
return;