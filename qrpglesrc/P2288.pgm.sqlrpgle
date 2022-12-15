**free

ctl-opt dftactgrp(*no);

dcl-pi P2288;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2220.rpgleinc'
/copy 'qrpgleref/P499.rpgleinc'
/copy 'qrpgleref/P1326.rpgleinc'

dcl-ds theTable extname('T455') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T455 LIMIT 1;

theCharVar = 'Hello from P2288';
dsply theCharVar;
P2220();
P499();
P1326();
return;