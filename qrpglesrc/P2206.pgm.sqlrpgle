**free

ctl-opt dftactgrp(*no);

dcl-pi P2206;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1598.rpgleinc'
/copy 'qrpgleref/P143.rpgleinc'
/copy 'qrpgleref/P882.rpgleinc'

dcl-ds theTable extname('T833') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T833 LIMIT 1;

theCharVar = 'Hello from P2206';
dsply theCharVar;
P1598();
P143();
P882();
return;