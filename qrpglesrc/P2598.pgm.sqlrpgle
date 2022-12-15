**free

ctl-opt dftactgrp(*no);

dcl-pi P2598;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2330.rpgleinc'
/copy 'qrpgleref/P149.rpgleinc'
/copy 'qrpgleref/P1036.rpgleinc'

dcl-ds theTable extname('T546') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T546 LIMIT 1;

theCharVar = 'Hello from P2598';
dsply theCharVar;
P2330();
P149();
P1036();
return;