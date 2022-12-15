**free

ctl-opt dftactgrp(*no);

dcl-pi P1446;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P173.rpgleinc'
/copy 'qrpgleref/P985.rpgleinc'
/copy 'qrpgleref/P51.rpgleinc'

dcl-ds theTable extname('T345') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T345 LIMIT 1;

theCharVar = 'Hello from P1446';
dsply theCharVar;
P173();
P985();
P51();
return;