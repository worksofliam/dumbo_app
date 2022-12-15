**free

ctl-opt dftactgrp(*no);

dcl-pi P3302;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3138.rpgleinc'
/copy 'qrpgleref/P2583.rpgleinc'
/copy 'qrpgleref/P858.rpgleinc'

dcl-ds theTable extname('T572') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T572 LIMIT 1;

theCharVar = 'Hello from P3302';
dsply theCharVar;
P3138();
P2583();
P858();
return;