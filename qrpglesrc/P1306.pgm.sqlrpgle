**free

ctl-opt dftactgrp(*no);

dcl-pi P1306;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P774.rpgleinc'
/copy 'qrpgleref/P1108.rpgleinc'
/copy 'qrpgleref/P875.rpgleinc'

dcl-ds theTable extname('T476') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T476 LIMIT 1;

theCharVar = 'Hello from P1306';
dsply theCharVar;
P774();
P1108();
P875();
return;