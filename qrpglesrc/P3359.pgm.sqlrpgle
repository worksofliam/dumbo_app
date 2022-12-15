**free

ctl-opt dftactgrp(*no);

dcl-pi P3359;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1460.rpgleinc'
/copy 'qrpgleref/P2169.rpgleinc'
/copy 'qrpgleref/P551.rpgleinc'

dcl-ds theTable extname('T1327') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1327 LIMIT 1;

theCharVar = 'Hello from P3359';
dsply theCharVar;
P1460();
P2169();
P551();
return;