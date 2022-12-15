**free

ctl-opt dftactgrp(*no);

dcl-pi P2614;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1629.rpgleinc'
/copy 'qrpgleref/P1683.rpgleinc'
/copy 'qrpgleref/P2460.rpgleinc'

dcl-ds theTable extname('T1339') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1339 LIMIT 1;

theCharVar = 'Hello from P2614';
dsply theCharVar;
P1629();
P1683();
P2460();
return;