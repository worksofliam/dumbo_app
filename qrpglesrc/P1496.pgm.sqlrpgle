**free

ctl-opt dftactgrp(*no);

dcl-pi P1496;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1254.rpgleinc'
/copy 'qrpgleref/P485.rpgleinc'
/copy 'qrpgleref/P551.rpgleinc'

dcl-ds theTable extname('T279') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T279 LIMIT 1;

theCharVar = 'Hello from P1496';
dsply theCharVar;
P1254();
P485();
P551();
return;