**free

ctl-opt dftactgrp(*no);

dcl-pi P1457;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1365.rpgleinc'
/copy 'qrpgleref/P485.rpgleinc'
/copy 'qrpgleref/P58.rpgleinc'

dcl-ds theTable extname('T379') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T379 LIMIT 1;

theCharVar = 'Hello from P1457';
dsply theCharVar;
P1365();
P485();
P58();
return;