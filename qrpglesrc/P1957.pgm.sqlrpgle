**free

ctl-opt dftactgrp(*no);

dcl-pi P1957;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1084.rpgleinc'
/copy 'qrpgleref/P320.rpgleinc'
/copy 'qrpgleref/P1480.rpgleinc'

dcl-ds theTable extname('T848') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T848 LIMIT 1;

theCharVar = 'Hello from P1957';
dsply theCharVar;
P1084();
P320();
P1480();
return;