**free

ctl-opt dftactgrp(*no);

dcl-pi P4154;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1228.rpgleinc'
/copy 'qrpgleref/P287.rpgleinc'
/copy 'qrpgleref/P2718.rpgleinc'

dcl-ds theTable extname('T523') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T523 LIMIT 1;

theCharVar = 'Hello from P4154';
dsply theCharVar;
P1228();
P287();
P2718();
return;