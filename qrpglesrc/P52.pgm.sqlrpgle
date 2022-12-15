**free

ctl-opt dftactgrp(*no);

dcl-pi P52;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4.rpgleinc'
/copy 'qrpgleref/P24.rpgleinc'
/copy 'qrpgleref/P38.rpgleinc'

dcl-ds theTable extname('T1830') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1830 LIMIT 1;

theCharVar = 'Hello from P52';
dsply theCharVar;
P4();
P24();
P38();
return;