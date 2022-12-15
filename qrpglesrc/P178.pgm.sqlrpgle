**free

ctl-opt dftactgrp(*no);

dcl-pi P178;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P39.rpgleinc'
/copy 'qrpgleref/P173.rpgleinc'
/copy 'qrpgleref/P50.rpgleinc'

dcl-ds theTable extname('T6') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T6 LIMIT 1;

theCharVar = 'Hello from P178';
dsply theCharVar;
P39();
P173();
P50();
return;