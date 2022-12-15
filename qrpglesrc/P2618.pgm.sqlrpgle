**free

ctl-opt dftactgrp(*no);

dcl-pi P2618;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1135.rpgleinc'
/copy 'qrpgleref/P812.rpgleinc'
/copy 'qrpgleref/P617.rpgleinc'

dcl-ds theTable extname('T864') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T864 LIMIT 1;

theCharVar = 'Hello from P2618';
dsply theCharVar;
P1135();
P812();
P617();
return;