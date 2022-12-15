**free

ctl-opt dftactgrp(*no);

dcl-pi P4857;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3611.rpgleinc'
/copy 'qrpgleref/P3833.rpgleinc'
/copy 'qrpgleref/P3309.rpgleinc'

dcl-ds theTable extname('T516') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T516 LIMIT 1;

theCharVar = 'Hello from P4857';
dsply theCharVar;
P3611();
P3833();
P3309();
return;