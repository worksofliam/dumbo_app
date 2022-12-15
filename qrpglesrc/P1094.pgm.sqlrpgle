**free

ctl-opt dftactgrp(*no);

dcl-pi P1094;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P629.rpgleinc'
/copy 'qrpgleref/P300.rpgleinc'
/copy 'qrpgleref/P137.rpgleinc'

dcl-ds theTable extname('T243') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T243 LIMIT 1;

theCharVar = 'Hello from P1094';
dsply theCharVar;
P629();
P300();
P137();
return;