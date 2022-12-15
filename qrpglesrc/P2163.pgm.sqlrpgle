**free

ctl-opt dftactgrp(*no);

dcl-pi P2163;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1390.rpgleinc'
/copy 'qrpgleref/P568.rpgleinc'
/copy 'qrpgleref/P606.rpgleinc'

dcl-ds theTable extname('T302') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T302 LIMIT 1;

theCharVar = 'Hello from P2163';
dsply theCharVar;
P1390();
P568();
P606();
return;