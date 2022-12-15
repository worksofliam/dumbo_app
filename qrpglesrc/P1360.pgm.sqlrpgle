**free

ctl-opt dftactgrp(*no);

dcl-pi P1360;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P499.rpgleinc'
/copy 'qrpgleref/P1297.rpgleinc'
/copy 'qrpgleref/P795.rpgleinc'

dcl-ds theTable extname('T719') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T719 LIMIT 1;

theCharVar = 'Hello from P1360';
dsply theCharVar;
P499();
P1297();
P795();
return;