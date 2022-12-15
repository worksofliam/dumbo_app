**free

ctl-opt dftactgrp(*no);

dcl-pi P2485;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1293.rpgleinc'
/copy 'qrpgleref/P252.rpgleinc'
/copy 'qrpgleref/P1883.rpgleinc'

dcl-ds theTable extname('T1665') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1665 LIMIT 1;

theCharVar = 'Hello from P2485';
dsply theCharVar;
P1293();
P252();
P1883();
return;