**free

ctl-opt dftactgrp(*no);

dcl-pi P588;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P74.rpgleinc'
/copy 'qrpgleref/P250.rpgleinc'
/copy 'qrpgleref/P69.rpgleinc'

dcl-ds theTable extname('T119') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T119 LIMIT 1;

theCharVar = 'Hello from P588';
dsply theCharVar;
P74();
P250();
P69();
return;