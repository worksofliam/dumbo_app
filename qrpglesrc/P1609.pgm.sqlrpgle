**free

ctl-opt dftactgrp(*no);

dcl-pi P1609;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1374.rpgleinc'
/copy 'qrpgleref/P771.rpgleinc'
/copy 'qrpgleref/P1601.rpgleinc'

dcl-ds theTable extname('T113') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T113 LIMIT 1;

theCharVar = 'Hello from P1609';
dsply theCharVar;
P1374();
P771();
P1601();
return;