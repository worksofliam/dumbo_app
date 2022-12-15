**free

ctl-opt dftactgrp(*no);

dcl-pi P2498;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P520.rpgleinc'
/copy 'qrpgleref/P2491.rpgleinc'
/copy 'qrpgleref/P1551.rpgleinc'

dcl-ds theTable extname('T691') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T691 LIMIT 1;

theCharVar = 'Hello from P2498';
dsply theCharVar;
P520();
P2491();
P1551();
return;