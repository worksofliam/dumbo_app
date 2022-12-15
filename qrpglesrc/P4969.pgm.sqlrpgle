**free

ctl-opt dftactgrp(*no);

dcl-pi P4969;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1173.rpgleinc'
/copy 'qrpgleref/P4311.rpgleinc'
/copy 'qrpgleref/P4684.rpgleinc'

dcl-ds theTable extname('T44') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T44 LIMIT 1;

theCharVar = 'Hello from P4969';
dsply theCharVar;
P1173();
P4311();
P4684();
return;