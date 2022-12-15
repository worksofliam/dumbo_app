**free

ctl-opt dftactgrp(*no);

dcl-pi P1444;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P585.rpgleinc'
/copy 'qrpgleref/P371.rpgleinc'
/copy 'qrpgleref/P1067.rpgleinc'

dcl-ds theTable extname('T97') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T97 LIMIT 1;

theCharVar = 'Hello from P1444';
dsply theCharVar;
P585();
P371();
P1067();
return;