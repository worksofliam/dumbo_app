**free

ctl-opt dftactgrp(*no);

dcl-pi P168;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P17.rpgleinc'
/copy 'qrpgleref/P63.rpgleinc'
/copy 'qrpgleref/P122.rpgleinc'

dcl-ds theTable extname('T83') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T83 LIMIT 1;

theCharVar = 'Hello from P168';
dsply theCharVar;
P17();
P63();
P122();
return;