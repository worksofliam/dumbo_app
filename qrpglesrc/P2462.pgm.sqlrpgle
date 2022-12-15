**free

ctl-opt dftactgrp(*no);

dcl-pi P2462;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1706.rpgleinc'
/copy 'qrpgleref/P376.rpgleinc'
/copy 'qrpgleref/P1104.rpgleinc'

dcl-ds theTable extname('T643') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T643 LIMIT 1;

theCharVar = 'Hello from P2462';
dsply theCharVar;
P1706();
P376();
P1104();
return;