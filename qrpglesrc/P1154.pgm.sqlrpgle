**free

ctl-opt dftactgrp(*no);

dcl-pi P1154;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1066.rpgleinc'
/copy 'qrpgleref/P1125.rpgleinc'
/copy 'qrpgleref/P364.rpgleinc'

dcl-ds theTable extname('T448') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T448 LIMIT 1;

theCharVar = 'Hello from P1154';
dsply theCharVar;
P1066();
P1125();
P364();
return;