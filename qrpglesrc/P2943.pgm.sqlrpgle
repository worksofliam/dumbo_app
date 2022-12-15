**free

ctl-opt dftactgrp(*no);

dcl-pi P2943;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1724.rpgleinc'
/copy 'qrpgleref/P21.rpgleinc'
/copy 'qrpgleref/P1123.rpgleinc'

dcl-ds theTable extname('T1521') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1521 LIMIT 1;

theCharVar = 'Hello from P2943';
dsply theCharVar;
P1724();
P21();
P1123();
return;