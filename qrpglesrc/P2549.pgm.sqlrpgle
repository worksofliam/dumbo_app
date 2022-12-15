**free

ctl-opt dftactgrp(*no);

dcl-pi P2549;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1541.rpgleinc'
/copy 'qrpgleref/P2089.rpgleinc'
/copy 'qrpgleref/P1240.rpgleinc'

dcl-ds theTable extname('T398') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T398 LIMIT 1;

theCharVar = 'Hello from P2549';
dsply theCharVar;
P1541();
P2089();
P1240();
return;