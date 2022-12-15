**free

ctl-opt dftactgrp(*no);

dcl-pi P729;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P342.rpgleinc'
/copy 'qrpgleref/P683.rpgleinc'
/copy 'qrpgleref/P24.rpgleinc'

dcl-ds theTable extname('T435') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T435 LIMIT 1;

theCharVar = 'Hello from P729';
dsply theCharVar;
P342();
P683();
P24();
return;