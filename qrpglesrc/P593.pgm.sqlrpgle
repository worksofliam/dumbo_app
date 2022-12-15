**free

ctl-opt dftactgrp(*no);

dcl-pi P593;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P214.rpgleinc'
/copy 'qrpgleref/P180.rpgleinc'
/copy 'qrpgleref/P136.rpgleinc'

dcl-ds theTable extname('T93') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T93 LIMIT 1;

theCharVar = 'Hello from P593';
dsply theCharVar;
P214();
P180();
P136();
return;