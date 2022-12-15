**free

ctl-opt dftactgrp(*no);

dcl-pi P2487;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1740.rpgleinc'
/copy 'qrpgleref/P41.rpgleinc'
/copy 'qrpgleref/P348.rpgleinc'

dcl-ds theTable extname('T583') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T583 LIMIT 1;

theCharVar = 'Hello from P2487';
dsply theCharVar;
P1740();
P41();
P348();
return;