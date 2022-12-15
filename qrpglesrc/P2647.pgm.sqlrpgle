**free

ctl-opt dftactgrp(*no);

dcl-pi P2647;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2629.rpgleinc'
/copy 'qrpgleref/P2400.rpgleinc'
/copy 'qrpgleref/P2131.rpgleinc'

dcl-ds theTable extname('T1063') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1063 LIMIT 1;

theCharVar = 'Hello from P2647';
dsply theCharVar;
P2629();
P2400();
P2131();
return;