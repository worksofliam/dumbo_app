**free

ctl-opt dftactgrp(*no);

dcl-pi P2737;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2091.rpgleinc'
/copy 'qrpgleref/P983.rpgleinc'
/copy 'qrpgleref/P773.rpgleinc'

dcl-ds theTable extname('T534') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T534 LIMIT 1;

theCharVar = 'Hello from P2737';
dsply theCharVar;
P2091();
P983();
P773();
return;