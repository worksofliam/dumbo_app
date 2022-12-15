**free

ctl-opt dftactgrp(*no);

dcl-pi P2765;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2148.rpgleinc'
/copy 'qrpgleref/P1040.rpgleinc'
/copy 'qrpgleref/P2534.rpgleinc'

dcl-ds theTable extname('T382') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T382 LIMIT 1;

theCharVar = 'Hello from P2765';
dsply theCharVar;
P2148();
P1040();
P2534();
return;