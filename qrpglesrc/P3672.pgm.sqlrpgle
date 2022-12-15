**free

ctl-opt dftactgrp(*no);

dcl-pi P3672;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2430.rpgleinc'
/copy 'qrpgleref/P6.rpgleinc'
/copy 'qrpgleref/P3513.rpgleinc'

dcl-ds theTable extname('T984') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T984 LIMIT 1;

theCharVar = 'Hello from P3672';
dsply theCharVar;
P2430();
P6();
P3513();
return;