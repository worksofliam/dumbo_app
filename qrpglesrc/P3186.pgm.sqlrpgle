**free

ctl-opt dftactgrp(*no);

dcl-pi P3186;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1856.rpgleinc'
/copy 'qrpgleref/P2534.rpgleinc'
/copy 'qrpgleref/P82.rpgleinc'

dcl-ds theTable extname('T1541') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1541 LIMIT 1;

theCharVar = 'Hello from P3186';
dsply theCharVar;
P1856();
P2534();
P82();
return;