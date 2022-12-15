**free

ctl-opt dftactgrp(*no);

dcl-pi P1167;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P197.rpgleinc'
/copy 'qrpgleref/P787.rpgleinc'
/copy 'qrpgleref/P8.rpgleinc'

dcl-ds theTable extname('T115') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T115 LIMIT 1;

theCharVar = 'Hello from P1167';
dsply theCharVar;
P197();
P787();
P8();
return;