**free

ctl-opt dftactgrp(*no);

dcl-pi P1516;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1335.rpgleinc'
/copy 'qrpgleref/P1172.rpgleinc'
/copy 'qrpgleref/P868.rpgleinc'

dcl-ds theTable extname('T722') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T722 LIMIT 1;

theCharVar = 'Hello from P1516';
dsply theCharVar;
P1335();
P1172();
P868();
return;