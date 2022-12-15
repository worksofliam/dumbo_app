**free

ctl-opt dftactgrp(*no);

dcl-pi P3118;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2137.rpgleinc'
/copy 'qrpgleref/P823.rpgleinc'
/copy 'qrpgleref/P1410.rpgleinc'

dcl-ds theTable extname('T961') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T961 LIMIT 1;

theCharVar = 'Hello from P3118';
dsply theCharVar;
P2137();
P823();
P1410();
return;