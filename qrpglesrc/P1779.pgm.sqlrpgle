**free

ctl-opt dftactgrp(*no);

dcl-pi P1779;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1183.rpgleinc'
/copy 'qrpgleref/P968.rpgleinc'
/copy 'qrpgleref/P168.rpgleinc'

dcl-ds theTable extname('T125') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T125 LIMIT 1;

theCharVar = 'Hello from P1779';
dsply theCharVar;
P1183();
P968();
P168();
return;