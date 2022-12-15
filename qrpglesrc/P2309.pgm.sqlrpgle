**free

ctl-opt dftactgrp(*no);

dcl-pi P2309;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P605.rpgleinc'
/copy 'qrpgleref/P1353.rpgleinc'
/copy 'qrpgleref/P533.rpgleinc'

dcl-ds theTable extname('T583') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T583 LIMIT 1;

theCharVar = 'Hello from P2309';
dsply theCharVar;
P605();
P1353();
P533();
return;