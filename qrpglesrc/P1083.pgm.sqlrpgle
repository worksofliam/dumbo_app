**free

ctl-opt dftactgrp(*no);

dcl-pi P1083;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P583.rpgleinc'
/copy 'qrpgleref/P8.rpgleinc'
/copy 'qrpgleref/P244.rpgleinc'

dcl-ds theTable extname('T654') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T654 LIMIT 1;

theCharVar = 'Hello from P1083';
dsply theCharVar;
P583();
P8();
P244();
return;