**free

ctl-opt dftactgrp(*no);

dcl-pi P2506;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1443.rpgleinc'
/copy 'qrpgleref/P376.rpgleinc'
/copy 'qrpgleref/P697.rpgleinc'

dcl-ds theTable extname('T847') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T847 LIMIT 1;

theCharVar = 'Hello from P2506';
dsply theCharVar;
P1443();
P376();
P697();
return;