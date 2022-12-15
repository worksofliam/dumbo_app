**free

ctl-opt dftactgrp(*no);

dcl-pi P3180;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1175.rpgleinc'
/copy 'qrpgleref/P334.rpgleinc'
/copy 'qrpgleref/P1130.rpgleinc'

dcl-ds theTable extname('T1459') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1459 LIMIT 1;

theCharVar = 'Hello from P3180';
dsply theCharVar;
P1175();
P334();
P1130();
return;