**free

ctl-opt dftactgrp(*no);

dcl-pi P2348;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1260.rpgleinc'
/copy 'qrpgleref/P1347.rpgleinc'
/copy 'qrpgleref/P1287.rpgleinc'

dcl-ds theTable extname('T469') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T469 LIMIT 1;

theCharVar = 'Hello from P2348';
dsply theCharVar;
P1260();
P1347();
P1287();
return;