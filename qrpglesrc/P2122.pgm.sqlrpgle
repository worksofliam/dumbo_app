**free

ctl-opt dftactgrp(*no);

dcl-pi P2122;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1843.rpgleinc'
/copy 'qrpgleref/P1563.rpgleinc'
/copy 'qrpgleref/P981.rpgleinc'

dcl-ds theTable extname('T1659') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1659 LIMIT 1;

theCharVar = 'Hello from P2122';
dsply theCharVar;
P1843();
P1563();
P981();
return;