**free

ctl-opt dftactgrp(*no);

dcl-pi P2713;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1332.rpgleinc'
/copy 'qrpgleref/P2672.rpgleinc'
/copy 'qrpgleref/P836.rpgleinc'

dcl-ds theTable extname('T1711') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1711 LIMIT 1;

theCharVar = 'Hello from P2713';
dsply theCharVar;
P1332();
P2672();
P836();
return;