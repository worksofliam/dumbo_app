**free

ctl-opt dftactgrp(*no);

dcl-pi P1823;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P13.rpgleinc'
/copy 'qrpgleref/P1231.rpgleinc'
/copy 'qrpgleref/P333.rpgleinc'

dcl-ds theTable extname('T1197') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1197 LIMIT 1;

theCharVar = 'Hello from P1823';
dsply theCharVar;
P13();
P1231();
P333();
return;