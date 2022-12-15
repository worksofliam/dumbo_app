**free

ctl-opt dftactgrp(*no);

dcl-pi P576;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P192.rpgleinc'
/copy 'qrpgleref/P137.rpgleinc'
/copy 'qrpgleref/P93.rpgleinc'

dcl-ds theTable extname('T973') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T973 LIMIT 1;

theCharVar = 'Hello from P576';
dsply theCharVar;
P192();
P137();
P93();
return;