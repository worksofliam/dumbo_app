**free

ctl-opt dftactgrp(*no);

dcl-pi P795;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P313.rpgleinc'
/copy 'qrpgleref/P170.rpgleinc'
/copy 'qrpgleref/P14.rpgleinc'

dcl-ds theTable extname('T301') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T301 LIMIT 1;

theCharVar = 'Hello from P795';
dsply theCharVar;
P313();
P170();
P14();
return;