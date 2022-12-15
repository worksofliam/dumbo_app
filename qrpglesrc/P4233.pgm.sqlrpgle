**free

ctl-opt dftactgrp(*no);

dcl-pi P4233;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1409.rpgleinc'
/copy 'qrpgleref/P3317.rpgleinc'
/copy 'qrpgleref/P2608.rpgleinc'

dcl-ds theTable extname('T1555') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1555 LIMIT 1;

theCharVar = 'Hello from P4233';
dsply theCharVar;
P1409();
P3317();
P2608();
return;