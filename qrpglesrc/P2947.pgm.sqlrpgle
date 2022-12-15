**free

ctl-opt dftactgrp(*no);

dcl-pi P2947;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2210.rpgleinc'
/copy 'qrpgleref/P2621.rpgleinc'
/copy 'qrpgleref/P1730.rpgleinc'

dcl-ds theTable extname('T467') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T467 LIMIT 1;

theCharVar = 'Hello from P2947';
dsply theCharVar;
P2210();
P2621();
P1730();
return;