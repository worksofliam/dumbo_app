**free

ctl-opt dftactgrp(*no);

dcl-pi P5048;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3759.rpgleinc'
/copy 'qrpgleref/P4984.rpgleinc'
/copy 'qrpgleref/P4824.rpgleinc'

dcl-ds theTable extname('T817') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T817 LIMIT 1;

theCharVar = 'Hello from P5048';
dsply theCharVar;
P3759();
P4984();
P4824();
return;