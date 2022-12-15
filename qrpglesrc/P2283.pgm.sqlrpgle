**free

ctl-opt dftactgrp(*no);

dcl-pi P2283;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1929.rpgleinc'
/copy 'qrpgleref/P1858.rpgleinc'
/copy 'qrpgleref/P1755.rpgleinc'

dcl-ds theTable extname('T784') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T784 LIMIT 1;

theCharVar = 'Hello from P2283';
dsply theCharVar;
P1929();
P1858();
P1755();
return;