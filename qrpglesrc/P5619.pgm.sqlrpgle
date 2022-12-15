**free

ctl-opt dftactgrp(*no);

dcl-pi P5619;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3213.rpgleinc'
/copy 'qrpgleref/P2686.rpgleinc'
/copy 'qrpgleref/P1337.rpgleinc'

dcl-ds theTable extname('T437') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T437 LIMIT 1;

theCharVar = 'Hello from P5619';
dsply theCharVar;
P3213();
P2686();
P1337();
return;