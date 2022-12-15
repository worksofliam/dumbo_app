**free

ctl-opt dftactgrp(*no);

dcl-pi P1387;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P220.rpgleinc'
/copy 'qrpgleref/P832.rpgleinc'
/copy 'qrpgleref/P873.rpgleinc'

dcl-ds theTable extname('T636') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T636 LIMIT 1;

theCharVar = 'Hello from P1387';
dsply theCharVar;
P220();
P832();
P873();
return;