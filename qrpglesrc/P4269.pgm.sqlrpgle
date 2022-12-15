**free

ctl-opt dftactgrp(*no);

dcl-pi P4269;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2034.rpgleinc'
/copy 'qrpgleref/P1101.rpgleinc'
/copy 'qrpgleref/P4180.rpgleinc'

dcl-ds theTable extname('T55') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T55 LIMIT 1;

theCharVar = 'Hello from P4269';
dsply theCharVar;
P2034();
P1101();
P4180();
return;