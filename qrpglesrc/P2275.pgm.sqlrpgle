**free

ctl-opt dftactgrp(*no);

dcl-pi P2275;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1591.rpgleinc'
/copy 'qrpgleref/P549.rpgleinc'
/copy 'qrpgleref/P2150.rpgleinc'

dcl-ds theTable extname('T627') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T627 LIMIT 1;

theCharVar = 'Hello from P2275';
dsply theCharVar;
P1591();
P549();
P2150();
return;