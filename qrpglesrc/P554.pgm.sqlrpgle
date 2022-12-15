**free

ctl-opt dftactgrp(*no);

dcl-pi P554;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P437.rpgleinc'
/copy 'qrpgleref/P265.rpgleinc'
/copy 'qrpgleref/P489.rpgleinc'

dcl-ds theTable extname('T33') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T33 LIMIT 1;

theCharVar = 'Hello from P554';
dsply theCharVar;
P437();
P265();
P489();
return;