**free

ctl-opt dftactgrp(*no);

dcl-pi P2168;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1280.rpgleinc'
/copy 'qrpgleref/P1532.rpgleinc'
/copy 'qrpgleref/P1666.rpgleinc'

dcl-ds theTable extname('T1100') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1100 LIMIT 1;

theCharVar = 'Hello from P2168';
dsply theCharVar;
P1280();
P1532();
P1666();
return;