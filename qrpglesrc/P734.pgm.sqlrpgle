**free

ctl-opt dftactgrp(*no);

dcl-pi P734;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P525.rpgleinc'
/copy 'qrpgleref/P594.rpgleinc'
/copy 'qrpgleref/P551.rpgleinc'

dcl-ds theTable extname('T1304') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1304 LIMIT 1;

theCharVar = 'Hello from P734';
dsply theCharVar;
P525();
P594();
P551();
return;