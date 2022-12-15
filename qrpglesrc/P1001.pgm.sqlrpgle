**free

ctl-opt dftactgrp(*no);

dcl-pi P1001;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P875.rpgleinc'
/copy 'qrpgleref/P263.rpgleinc'
/copy 'qrpgleref/P392.rpgleinc'

dcl-ds theTable extname('T985') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T985 LIMIT 1;

theCharVar = 'Hello from P1001';
dsply theCharVar;
P875();
P263();
P392();
return;