**free

ctl-opt dftactgrp(*no);

dcl-pi P3422;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2439.rpgleinc'
/copy 'qrpgleref/P1070.rpgleinc'
/copy 'qrpgleref/P1561.rpgleinc'

dcl-ds theTable extname('T810') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T810 LIMIT 1;

theCharVar = 'Hello from P3422';
dsply theCharVar;
P2439();
P1070();
P1561();
return;