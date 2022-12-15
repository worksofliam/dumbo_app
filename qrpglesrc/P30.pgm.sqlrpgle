**free

ctl-opt dftactgrp(*no);

dcl-pi P30;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P9.rpgleinc'
/copy 'qrpgleref/P1.rpgleinc'

dcl-ds theTable extname('T90') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T90 LIMIT 1;

theCharVar = 'Hello from P30';
dsply theCharVar;
P9();
P1();
return;