**free

ctl-opt dftactgrp(*no);

dcl-pi P4641;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2033.rpgleinc'
/copy 'qrpgleref/P2274.rpgleinc'
/copy 'qrpgleref/P1623.rpgleinc'

dcl-ds theTable extname('T570') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T570 LIMIT 1;

theCharVar = 'Hello from P4641';
dsply theCharVar;
P2033();
P2274();
P1623();
return;