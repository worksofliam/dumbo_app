**free

ctl-opt dftactgrp(*no);

dcl-pi P2815;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1560.rpgleinc'
/copy 'qrpgleref/P407.rpgleinc'
/copy 'qrpgleref/P1619.rpgleinc'

dcl-ds theTable extname('T603') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T603 LIMIT 1;

theCharVar = 'Hello from P2815';
dsply theCharVar;
P1560();
P407();
P1619();
return;