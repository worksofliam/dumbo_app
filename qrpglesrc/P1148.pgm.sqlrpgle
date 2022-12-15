**free

ctl-opt dftactgrp(*no);

dcl-pi P1148;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P6.rpgleinc'
/copy 'qrpgleref/P1121.rpgleinc'
/copy 'qrpgleref/P265.rpgleinc'

dcl-ds theTable extname('T428') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T428 LIMIT 1;

theCharVar = 'Hello from P1148';
dsply theCharVar;
P6();
P1121();
P265();
return;