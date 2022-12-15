**free

ctl-opt dftactgrp(*no);

dcl-pi P1399;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P749.rpgleinc'
/copy 'qrpgleref/P562.rpgleinc'
/copy 'qrpgleref/P457.rpgleinc'

dcl-ds theTable extname('T456') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T456 LIMIT 1;

theCharVar = 'Hello from P1399';
dsply theCharVar;
P749();
P562();
P457();
return;