**free

ctl-opt dftactgrp(*no);

dcl-pi P1001;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P875.rpgleinc'
/copy 'qrpgleref/P306.rpgleinc'
/copy 'qrpgleref/P703.rpgleinc'

dcl-ds theTable extname('T889') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T889 LIMIT 1;

theCharVar = 'Hello from P1001';
dsply theCharVar;
P875();
P306();
P703();
return;