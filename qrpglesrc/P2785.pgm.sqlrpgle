**free

ctl-opt dftactgrp(*no);

dcl-pi P2785;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1445.rpgleinc'
/copy 'qrpgleref/P240.rpgleinc'
/copy 'qrpgleref/P2703.rpgleinc'

dcl-ds theTable extname('T35') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T35 LIMIT 1;

theCharVar = 'Hello from P2785';
dsply theCharVar;
P1445();
P240();
P2703();
return;