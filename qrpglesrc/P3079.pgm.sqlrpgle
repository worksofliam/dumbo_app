**free

ctl-opt dftactgrp(*no);

dcl-pi P3079;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P789.rpgleinc'
/copy 'qrpgleref/P1044.rpgleinc'
/copy 'qrpgleref/P1410.rpgleinc'

dcl-ds theTable extname('T428') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T428 LIMIT 1;

theCharVar = 'Hello from P3079';
dsply theCharVar;
P789();
P1044();
P1410();
return;