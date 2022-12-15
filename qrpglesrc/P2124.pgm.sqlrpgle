**free

ctl-opt dftactgrp(*no);

dcl-pi P2124;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P282.rpgleinc'
/copy 'qrpgleref/P762.rpgleinc'
/copy 'qrpgleref/P1533.rpgleinc'

dcl-ds theTable extname('T717') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T717 LIMIT 1;

theCharVar = 'Hello from P2124';
dsply theCharVar;
P282();
P762();
P1533();
return;