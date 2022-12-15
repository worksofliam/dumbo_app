**free

ctl-opt dftactgrp(*no);

dcl-pi P836;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P635.rpgleinc'
/copy 'qrpgleref/P84.rpgleinc'
/copy 'qrpgleref/P80.rpgleinc'

dcl-ds theTable extname('T1001') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1001 LIMIT 1;

theCharVar = 'Hello from P836';
dsply theCharVar;
P635();
P84();
P80();
return;