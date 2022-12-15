**free

ctl-opt dftactgrp(*no);

dcl-pi P4234;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2130.rpgleinc'
/copy 'qrpgleref/P559.rpgleinc'
/copy 'qrpgleref/P2907.rpgleinc'

dcl-ds theTable extname('T509') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T509 LIMIT 1;

theCharVar = 'Hello from P4234';
dsply theCharVar;
P2130();
P559();
P2907();
return;