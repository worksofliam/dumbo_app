**free

ctl-opt dftactgrp(*no);

dcl-pi P4213;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1104.rpgleinc'
/copy 'qrpgleref/P1476.rpgleinc'
/copy 'qrpgleref/P4211.rpgleinc'

dcl-ds theTable extname('T9') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T9 LIMIT 1;

theCharVar = 'Hello from P4213';
dsply theCharVar;
P1104();
P1476();
P4211();
return;