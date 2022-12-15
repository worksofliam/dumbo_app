**free

ctl-opt dftactgrp(*no);

dcl-pi P14;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P13.rpgleinc'
/copy 'qrpgleref/P8.rpgleinc'
/copy 'qrpgleref/P3.rpgleinc'

dcl-ds theTable extname('T405') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T405 LIMIT 1;

theCharVar = 'Hello from P14';
dsply theCharVar;
P13();
P8();
P3();
return;