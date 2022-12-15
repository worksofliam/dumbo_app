**free

ctl-opt dftactgrp(*no);

dcl-pi P2654;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P854.rpgleinc'
/copy 'qrpgleref/P104.rpgleinc'
/copy 'qrpgleref/P929.rpgleinc'

dcl-ds theTable extname('T810') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T810 LIMIT 1;

theCharVar = 'Hello from P2654';
dsply theCharVar;
P854();
P104();
P929();
return;