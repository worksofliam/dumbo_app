**free

ctl-opt dftactgrp(*no);

dcl-pi P2429;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P832.rpgleinc'
/copy 'qrpgleref/P2105.rpgleinc'
/copy 'qrpgleref/P1587.rpgleinc'

dcl-ds theTable extname('T1168') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1168 LIMIT 1;

theCharVar = 'Hello from P2429';
dsply theCharVar;
P832();
P2105();
P1587();
return;