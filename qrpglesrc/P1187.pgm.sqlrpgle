**free

ctl-opt dftactgrp(*no);

dcl-pi P1187;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P173.rpgleinc'
/copy 'qrpgleref/P1137.rpgleinc'
/copy 'qrpgleref/P94.rpgleinc'

dcl-ds theTable extname('T984') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T984 LIMIT 1;

theCharVar = 'Hello from P1187';
dsply theCharVar;
P173();
P1137();
P94();
return;