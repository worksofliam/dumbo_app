**free

ctl-opt dftactgrp(*no);

dcl-pi P2577;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1917.rpgleinc'
/copy 'qrpgleref/P1513.rpgleinc'
/copy 'qrpgleref/P2036.rpgleinc'

dcl-ds theTable extname('T1419') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1419 LIMIT 1;

theCharVar = 'Hello from P2577';
dsply theCharVar;
P1917();
P1513();
P2036();
return;