**free

ctl-opt dftactgrp(*no);

dcl-pi P3048;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1314.rpgleinc'
/copy 'qrpgleref/P2693.rpgleinc'
/copy 'qrpgleref/P1347.rpgleinc'

dcl-ds theTable extname('T1033') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1033 LIMIT 1;

theCharVar = 'Hello from P3048';
dsply theCharVar;
P1314();
P2693();
P1347();
return;