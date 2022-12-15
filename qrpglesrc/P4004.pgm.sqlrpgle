**free

ctl-opt dftactgrp(*no);

dcl-pi P4004;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3489.rpgleinc'
/copy 'qrpgleref/P2953.rpgleinc'
/copy 'qrpgleref/P3441.rpgleinc'

dcl-ds theTable extname('T549') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T549 LIMIT 1;

theCharVar = 'Hello from P4004';
dsply theCharVar;
P3489();
P2953();
P3441();
return;