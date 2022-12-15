**free

ctl-opt dftactgrp(*no);

dcl-pi P2257;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P934.rpgleinc'
/copy 'qrpgleref/P1325.rpgleinc'
/copy 'qrpgleref/P548.rpgleinc'

dcl-ds theTable extname('T891') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T891 LIMIT 1;

theCharVar = 'Hello from P2257';
dsply theCharVar;
P934();
P1325();
P548();
return;