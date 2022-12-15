**free

ctl-opt dftactgrp(*no);

dcl-pi P2734;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1449.rpgleinc'
/copy 'qrpgleref/P328.rpgleinc'
/copy 'qrpgleref/P2692.rpgleinc'

dcl-ds theTable extname('T582') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T582 LIMIT 1;

theCharVar = 'Hello from P2734';
dsply theCharVar;
P1449();
P328();
P2692();
return;