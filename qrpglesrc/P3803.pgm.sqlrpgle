**free

ctl-opt dftactgrp(*no);

dcl-pi P3803;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3548.rpgleinc'
/copy 'qrpgleref/P1875.rpgleinc'
/copy 'qrpgleref/P2780.rpgleinc'

dcl-ds theTable extname('T222') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T222 LIMIT 1;

theCharVar = 'Hello from P3803';
dsply theCharVar;
P3548();
P1875();
P2780();
return;