**free

ctl-opt dftactgrp(*no);

dcl-pi P1390;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P545.rpgleinc'
/copy 'qrpgleref/P936.rpgleinc'
/copy 'qrpgleref/P250.rpgleinc'

dcl-ds theTable extname('T467') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T467 LIMIT 1;

theCharVar = 'Hello from P1390';
dsply theCharVar;
P545();
P936();
P250();
return;