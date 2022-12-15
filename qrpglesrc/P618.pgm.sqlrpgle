**free

ctl-opt dftactgrp(*no);

dcl-pi P618;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P460.rpgleinc'
/copy 'qrpgleref/P233.rpgleinc'
/copy 'qrpgleref/P563.rpgleinc'

dcl-ds theTable extname('T1522') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1522 LIMIT 1;

theCharVar = 'Hello from P618';
dsply theCharVar;
P460();
P233();
P563();
return;