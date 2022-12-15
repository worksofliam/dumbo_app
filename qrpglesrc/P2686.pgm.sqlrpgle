**free

ctl-opt dftactgrp(*no);

dcl-pi P2686;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1089.rpgleinc'
/copy 'qrpgleref/P835.rpgleinc'
/copy 'qrpgleref/P79.rpgleinc'

dcl-ds theTable extname('T1016') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1016 LIMIT 1;

theCharVar = 'Hello from P2686';
dsply theCharVar;
P1089();
P835();
P79();
return;