**free

ctl-opt dftactgrp(*no);

dcl-pi P1465;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P432.rpgleinc'
/copy 'qrpgleref/P1025.rpgleinc'
/copy 'qrpgleref/P904.rpgleinc'

dcl-ds theTable extname('T142') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T142 LIMIT 1;

theCharVar = 'Hello from P1465';
dsply theCharVar;
P432();
P1025();
P904();
return;