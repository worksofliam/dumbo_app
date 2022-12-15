**free

ctl-opt dftactgrp(*no);

dcl-pi P662;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P590.rpgleinc'
/copy 'qrpgleref/P444.rpgleinc'
/copy 'qrpgleref/P447.rpgleinc'

dcl-ds theTable extname('T602') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T602 LIMIT 1;

theCharVar = 'Hello from P662';
dsply theCharVar;
P590();
P444();
P447();
return;