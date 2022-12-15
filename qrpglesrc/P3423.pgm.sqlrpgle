**free

ctl-opt dftactgrp(*no);

dcl-pi P3423;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2447.rpgleinc'
/copy 'qrpgleref/P2395.rpgleinc'
/copy 'qrpgleref/P3152.rpgleinc'

dcl-ds theTable extname('T244') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T244 LIMIT 1;

theCharVar = 'Hello from P3423';
dsply theCharVar;
P2447();
P2395();
P3152();
return;