**free

ctl-opt dftactgrp(*no);

dcl-pi P2499;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P389.rpgleinc'
/copy 'qrpgleref/P932.rpgleinc'
/copy 'qrpgleref/P533.rpgleinc'

dcl-ds theTable extname('T236') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T236 LIMIT 1;

theCharVar = 'Hello from P2499';
dsply theCharVar;
P389();
P932();
P533();
return;