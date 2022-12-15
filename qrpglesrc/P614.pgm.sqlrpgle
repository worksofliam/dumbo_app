**free

ctl-opt dftactgrp(*no);

dcl-pi P614;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P157.rpgleinc'
/copy 'qrpgleref/P371.rpgleinc'
/copy 'qrpgleref/P84.rpgleinc'

dcl-ds theTable extname('T43') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T43 LIMIT 1;

theCharVar = 'Hello from P614';
dsply theCharVar;
P157();
P371();
P84();
return;