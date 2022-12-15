**free

ctl-opt dftactgrp(*no);

dcl-pi P2465;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P803.rpgleinc'
/copy 'qrpgleref/P2296.rpgleinc'
/copy 'qrpgleref/P1275.rpgleinc'

dcl-ds theTable extname('T1509') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1509 LIMIT 1;

theCharVar = 'Hello from P2465';
dsply theCharVar;
P803();
P2296();
P1275();
return;