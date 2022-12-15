**free

ctl-opt dftactgrp(*no);

dcl-pi P2525;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2058.rpgleinc'
/copy 'qrpgleref/P2113.rpgleinc'
/copy 'qrpgleref/P469.rpgleinc'

dcl-ds theTable extname('T248') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T248 LIMIT 1;

theCharVar = 'Hello from P2525';
dsply theCharVar;
P2058();
P2113();
P469();
return;