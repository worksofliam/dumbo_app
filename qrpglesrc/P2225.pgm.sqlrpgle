**free

ctl-opt dftactgrp(*no);

dcl-pi P2225;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1787.rpgleinc'
/copy 'qrpgleref/P551.rpgleinc'
/copy 'qrpgleref/P239.rpgleinc'

dcl-ds theTable extname('T13') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T13 LIMIT 1;

theCharVar = 'Hello from P2225';
dsply theCharVar;
P1787();
P551();
P239();
return;