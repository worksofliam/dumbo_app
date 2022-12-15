**free

ctl-opt dftactgrp(*no);

dcl-pi P1758;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P120.rpgleinc'
/copy 'qrpgleref/P1677.rpgleinc'
/copy 'qrpgleref/P1636.rpgleinc'

dcl-ds theTable extname('T755') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T755 LIMIT 1;

theCharVar = 'Hello from P1758';
dsply theCharVar;
P120();
P1677();
P1636();
return;