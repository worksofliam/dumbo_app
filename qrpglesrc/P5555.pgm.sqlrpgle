**free

ctl-opt dftactgrp(*no);

dcl-pi P5555;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1585.rpgleinc'
/copy 'qrpgleref/P4357.rpgleinc'
/copy 'qrpgleref/P2819.rpgleinc'

dcl-ds theTable extname('T1032') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1032 LIMIT 1;

theCharVar = 'Hello from P5555';
dsply theCharVar;
P1585();
P4357();
P2819();
return;