**free

ctl-opt dftactgrp(*no);

dcl-pi P122;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P111.rpgleinc'
/copy 'qrpgleref/P8.rpgleinc'
/copy 'qrpgleref/P50.rpgleinc'

dcl-ds theTable extname('T542') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T542 LIMIT 1;

theCharVar = 'Hello from P122';
dsply theCharVar;
P111();
P8();
P50();
return;