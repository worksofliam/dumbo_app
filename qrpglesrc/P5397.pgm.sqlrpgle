**free

ctl-opt dftactgrp(*no);

dcl-pi P5397;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P494.rpgleinc'
/copy 'qrpgleref/P3402.rpgleinc'
/copy 'qrpgleref/P3482.rpgleinc'

dcl-ds theTable extname('T1127') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1127 LIMIT 1;

theCharVar = 'Hello from P5397';
dsply theCharVar;
P494();
P3402();
P3482();
return;