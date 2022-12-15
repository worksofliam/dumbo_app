**free

ctl-opt dftactgrp(*no);

dcl-pi P2447;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1627.rpgleinc'
/copy 'qrpgleref/P910.rpgleinc'
/copy 'qrpgleref/P1926.rpgleinc'

dcl-ds theTable extname('T168') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T168 LIMIT 1;

theCharVar = 'Hello from P2447';
dsply theCharVar;
P1627();
P910();
P1926();
return;