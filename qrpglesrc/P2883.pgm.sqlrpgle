**free

ctl-opt dftactgrp(*no);

dcl-pi P2883;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2559.rpgleinc'
/copy 'qrpgleref/P1151.rpgleinc'
/copy 'qrpgleref/P390.rpgleinc'

dcl-ds theTable extname('T373') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T373 LIMIT 1;

theCharVar = 'Hello from P2883';
dsply theCharVar;
P2559();
P1151();
P390();
return;