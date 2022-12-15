**free

ctl-opt dftactgrp(*no);

dcl-pi P2379;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P839.rpgleinc'
/copy 'qrpgleref/P1528.rpgleinc'
/copy 'qrpgleref/P1086.rpgleinc'

dcl-ds theTable extname('T979') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T979 LIMIT 1;

theCharVar = 'Hello from P2379';
dsply theCharVar;
P839();
P1528();
P1086();
return;