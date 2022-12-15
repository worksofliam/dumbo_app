**free

ctl-opt dftactgrp(*no);

dcl-pi P2647;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1419.rpgleinc'
/copy 'qrpgleref/P753.rpgleinc'
/copy 'qrpgleref/P2581.rpgleinc'

dcl-ds theTable extname('T371') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T371 LIMIT 1;

theCharVar = 'Hello from P2647';
dsply theCharVar;
P1419();
P753();
P2581();
return;