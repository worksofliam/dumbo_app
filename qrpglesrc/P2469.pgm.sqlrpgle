**free

ctl-opt dftactgrp(*no);

dcl-pi P2469;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1967.rpgleinc'
/copy 'qrpgleref/P430.rpgleinc'
/copy 'qrpgleref/P73.rpgleinc'

dcl-ds theTable extname('T111') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T111 LIMIT 1;

theCharVar = 'Hello from P2469';
dsply theCharVar;
P1967();
P430();
P73();
return;