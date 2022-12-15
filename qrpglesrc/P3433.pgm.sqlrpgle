**free

ctl-opt dftactgrp(*no);

dcl-pi P3433;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3234.rpgleinc'
/copy 'qrpgleref/P2209.rpgleinc'
/copy 'qrpgleref/P3169.rpgleinc'

dcl-ds theTable extname('T126') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T126 LIMIT 1;

theCharVar = 'Hello from P3433';
dsply theCharVar;
P3234();
P2209();
P3169();
return;