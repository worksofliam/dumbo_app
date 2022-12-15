**free

ctl-opt dftactgrp(*no);

dcl-pi P4807;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1499.rpgleinc'
/copy 'qrpgleref/P2300.rpgleinc'
/copy 'qrpgleref/P3291.rpgleinc'

dcl-ds T38 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T38 FROM T38 LIMIT 1;

theCharVar = 'Hello from P4807';
dsply theCharVar;
P1499();
P2300();
P3291();
return;