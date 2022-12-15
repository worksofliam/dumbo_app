**free

ctl-opt dftactgrp(*no);

dcl-pi P1182;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1039.rpgleinc'
/copy 'qrpgleref/P285.rpgleinc'
/copy 'qrpgleref/P895.rpgleinc'

dcl-ds theTable extname('T456') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T456 LIMIT 1;

theCharVar = 'Hello from P1182';
dsply theCharVar;
P1039();
P285();
P895();
return;