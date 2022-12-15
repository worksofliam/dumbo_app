**free

ctl-opt dftactgrp(*no);

dcl-pi P2770;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2610.rpgleinc'
/copy 'qrpgleref/P2166.rpgleinc'
/copy 'qrpgleref/P2441.rpgleinc'

dcl-ds theTable extname('T1668') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1668 LIMIT 1;

theCharVar = 'Hello from P2770';
dsply theCharVar;
P2610();
P2166();
P2441();
return;