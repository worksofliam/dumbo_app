**free

ctl-opt dftactgrp(*no);

dcl-pi P238;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P24.rpgleinc'
/copy 'qrpgleref/P233.rpgleinc'
/copy 'qrpgleref/P211.rpgleinc'

dcl-ds theTable extname('T6') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T6 LIMIT 1;

theCharVar = 'Hello from P238';
dsply theCharVar;
P24();
P233();
P211();
return;