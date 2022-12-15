**free

ctl-opt dftactgrp(*no);

dcl-pi P3041;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1396.rpgleinc'
/copy 'qrpgleref/P2862.rpgleinc'
/copy 'qrpgleref/P3033.rpgleinc'

dcl-ds theTable extname('T310') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T310 LIMIT 1;

theCharVar = 'Hello from P3041';
dsply theCharVar;
P1396();
P2862();
P3033();
return;