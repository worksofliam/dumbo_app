**free

ctl-opt dftactgrp(*no);

dcl-pi P5563;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3280.rpgleinc'
/copy 'qrpgleref/P1878.rpgleinc'
/copy 'qrpgleref/P2268.rpgleinc'

dcl-ds theTable extname('T456') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T456 LIMIT 1;

theCharVar = 'Hello from P5563';
dsply theCharVar;
P3280();
P1878();
P2268();
return;