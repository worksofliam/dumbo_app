**free

ctl-opt dftactgrp(*no);

dcl-pi P2593;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1953.rpgleinc'
/copy 'qrpgleref/P2159.rpgleinc'
/copy 'qrpgleref/P1497.rpgleinc'

dcl-ds theTable extname('T986') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T986 LIMIT 1;

theCharVar = 'Hello from P2593';
dsply theCharVar;
P1953();
P2159();
P1497();
return;