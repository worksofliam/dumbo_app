**free

ctl-opt dftactgrp(*no);

dcl-pi P2096;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P753.rpgleinc'
/copy 'qrpgleref/P564.rpgleinc'
/copy 'qrpgleref/P940.rpgleinc'

dcl-ds theTable extname('T135') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T135 LIMIT 1;

theCharVar = 'Hello from P2096';
dsply theCharVar;
P753();
P564();
P940();
return;