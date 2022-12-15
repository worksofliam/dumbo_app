**free

ctl-opt dftactgrp(*no);

dcl-pi P2295;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1030.rpgleinc'
/copy 'qrpgleref/P838.rpgleinc'
/copy 'qrpgleref/P1554.rpgleinc'

dcl-ds theTable extname('T730') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T730 LIMIT 1;

theCharVar = 'Hello from P2295';
dsply theCharVar;
P1030();
P838();
P1554();
return;