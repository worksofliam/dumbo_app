**free

ctl-opt dftactgrp(*no);

dcl-pi P5033;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P300.rpgleinc'
/copy 'qrpgleref/P4721.rpgleinc'
/copy 'qrpgleref/P83.rpgleinc'

dcl-ds theTable extname('T1602') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1602 LIMIT 1;

theCharVar = 'Hello from P5033';
dsply theCharVar;
P300();
P4721();
P83();
return;