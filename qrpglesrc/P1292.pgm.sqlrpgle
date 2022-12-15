**free

ctl-opt dftactgrp(*no);

dcl-pi P1292;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P145.rpgleinc'
/copy 'qrpgleref/P646.rpgleinc'
/copy 'qrpgleref/P755.rpgleinc'

dcl-ds theTable extname('T375') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T375 LIMIT 1;

theCharVar = 'Hello from P1292';
dsply theCharVar;
P145();
P646();
P755();
return;