**free

ctl-opt dftactgrp(*no);

dcl-pi P2988;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2752.rpgleinc'
/copy 'qrpgleref/P2835.rpgleinc'
/copy 'qrpgleref/P84.rpgleinc'

dcl-ds theTable extname('T675') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T675 LIMIT 1;

theCharVar = 'Hello from P2988';
dsply theCharVar;
P2752();
P2835();
P84();
return;