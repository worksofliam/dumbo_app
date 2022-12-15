**free

ctl-opt dftactgrp(*no);

dcl-pi P2252;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1523.rpgleinc'
/copy 'qrpgleref/P133.rpgleinc'
/copy 'qrpgleref/P1727.rpgleinc'

dcl-ds theTable extname('T71') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T71 LIMIT 1;

theCharVar = 'Hello from P2252';
dsply theCharVar;
P1523();
P133();
P1727();
return;