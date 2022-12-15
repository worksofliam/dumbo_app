**free

ctl-opt dftactgrp(*no);

dcl-pi P1131;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P757.rpgleinc'
/copy 'qrpgleref/P366.rpgleinc'
/copy 'qrpgleref/P173.rpgleinc'

dcl-ds theTable extname('T5') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T5 LIMIT 1;

theCharVar = 'Hello from P1131';
dsply theCharVar;
P757();
P366();
P173();
return;