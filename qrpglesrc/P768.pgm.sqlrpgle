**free

ctl-opt dftactgrp(*no);

dcl-pi P768;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P532.rpgleinc'
/copy 'qrpgleref/P662.rpgleinc'
/copy 'qrpgleref/P766.rpgleinc'

dcl-ds theTable extname('T465') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T465 LIMIT 1;

theCharVar = 'Hello from P768';
dsply theCharVar;
P532();
P662();
P766();
return;