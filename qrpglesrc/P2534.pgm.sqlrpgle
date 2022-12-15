**free

ctl-opt dftactgrp(*no);

dcl-pi P2534;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2371.rpgleinc'
/copy 'qrpgleref/P1641.rpgleinc'
/copy 'qrpgleref/P75.rpgleinc'

dcl-ds theTable extname('T895') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T895 LIMIT 1;

theCharVar = 'Hello from P2534';
dsply theCharVar;
P2371();
P1641();
P75();
return;