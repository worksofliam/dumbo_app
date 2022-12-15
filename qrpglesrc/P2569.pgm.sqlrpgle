**free

ctl-opt dftactgrp(*no);

dcl-pi P2569;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1560.rpgleinc'
/copy 'qrpgleref/P812.rpgleinc'
/copy 'qrpgleref/P154.rpgleinc'

dcl-ds theTable extname('T1210') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1210 LIMIT 1;

theCharVar = 'Hello from P2569';
dsply theCharVar;
P1560();
P812();
P154();
return;