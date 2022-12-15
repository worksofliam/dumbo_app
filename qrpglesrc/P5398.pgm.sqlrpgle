**free

ctl-opt dftactgrp(*no);

dcl-pi P5398;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2800.rpgleinc'
/copy 'qrpgleref/P4757.rpgleinc'
/copy 'qrpgleref/P4735.rpgleinc'

dcl-ds theTable extname('T1592') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1592 LIMIT 1;

theCharVar = 'Hello from P5398';
dsply theCharVar;
P2800();
P4757();
P4735();
return;