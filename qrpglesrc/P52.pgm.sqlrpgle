**free

ctl-opt dftactgrp(*no);

dcl-pi P52;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P30.rpgleinc'
/copy 'qrpgleref/P24.rpgleinc'
/copy 'qrpgleref/P13.rpgleinc'

dcl-ds theTable extname('T144') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T144 LIMIT 1;

theCharVar = 'Hello from P52';
dsply theCharVar;
P30();
P24();
P13();
return;