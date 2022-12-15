**free

ctl-opt dftactgrp(*no);

dcl-pi P1196;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P683.rpgleinc'
/copy 'qrpgleref/P3.rpgleinc'
/copy 'qrpgleref/P969.rpgleinc'

dcl-ds theTable extname('T1060') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1060 LIMIT 1;

theCharVar = 'Hello from P1196';
dsply theCharVar;
P683();
P3();
P969();
return;